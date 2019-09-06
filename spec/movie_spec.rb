class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I'm Batman!"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
       actor.act
       actor.fall_off_ladder
       actor.light_on_fire
       actor.act
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) {double(
    "Mr. Danger",
    fall_off_ladder: "I won't do that",
    light_on_fire: false,
    ready?: true,
    act: "Lights, Camera, Action!"
    )}

  subject {described_class.new(stuntman)}
  describe "#start_shooting" do
    it 'expects an actor to do three actions' do
      expect(stuntman).to receive(:ready?)
    #  expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:act).twice
       expect(stuntman).to receive(:act).at_most(2).times
    #  expect(stuntman).to receive(:act).at_least(2).times
    #  expect(stuntman).to receive(:light_on_fire).once
    #  expect(stuntman).to receive(:light_on_fire).exactly(1).times
      subject.start_shooting
    end
  end
end


# actor = Actor.new("George Clooney")
# movie = Movie.new(actor)
# movie.start_shooting
