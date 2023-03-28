class TarotSpreadsController < ApplicationController
    def new
    end
  
    def create
      tarot_deck = [
        # Major Arcana
          { name: "The Fool", description: "The Fool represents new beginnings, taking a leap of faith, being open to possibilities, and having a sense of adventure." },
          { name: "The Magician", description: "The Magician represents creativity, willpower, focus, and the ability to manifest your desires into reality." },
          { name: "The High Priestess", description: "The High Priestess represents intuition, inner wisdom, and the mysteries of the universe." },
          { name: "The Empress", description: "The Empress represents fertility, nurturing, abundance, and the power of nature." },
          { name: "The Emperor", description: "The Emperor represents authority, structure, leadership, and the ability to take charge of a situation." },
          { name: "The Hierophant", description: "The Hierophant represents tradition, conformity, and the need to follow established rules and systems." },
          { name: "The Lovers", description: "The Lovers represent relationships, choices, and the need to balance emotions and logic." },
          { name: "The Chariot", description: "The Chariot represents determination, willpower, and the ability to overcome obstacles and challenges." },
          { name: "Strength", description: "Strength represents courage, inner strength, and the ability to overcome fear and adversity." },
          { name: "The Hermit", description: "The Hermit represents solitude, introspection, and the search for inner truth and wisdom." },
          { name: "The Wheel of Fortune", description: "The Wheel of Fortune represents change, cycles, and the ups and downs of life." },
          { name: "Justice", description: "Justice represents balance, fairness, and the need to make ethical and moral decisions." },
          { name: "The Hanged Man", description: "The Hanged Man represents surrender, letting go, and the ability to see things from a different perspective." },
          { name: "Death", description: "Death represents transformation, change, and the end of one cycle to make way for the new." },
          { name: "Temperance", description: "Temperance represents balance, harmony, and the need to find the middle ground in life." },
          { name: "The Devil", description: "The Devil represents temptation, materialism, and the need to break free from negative patterns and beliefs." },
          { name: "The Tower", description: "The Tower represents chaos, upheaval, and the need to let go of things that no longer serve us." },
          { name: "The Star", description: "The Star represents hope, inspiration, and the ability to see the light in dark times." },
          { name: "The Moon", description: "The Moon represents emotions, intuition, and the need to face our fears and shadows." },
          { name: "The Sun", description: "The Sun represents joy, success, and the ability to shine our light and share our gifts with the world." },
          { name: "Judgement", description: "Judgement represents rebirth, renewal, and the need to let go of old patterns and beliefs." },
          { name: "The World", description: "The World represents completion, fulfillment, and the realization of our highest potential." },
        # Wands Suit
          { name: "Ace of Wands", description: "The Ace of Wands represents inspiration, ambition, and the spark of creativity." },
          { name: "Two of Wands", description: "The Two of Wands represents courage, daring and the adventure of striking out on a new journey." },
          { name: "Three of Wands", description: "A figure looks out over the ocean with three wands standing behind them, representing expansion and exploration." },
          { name: "Four of Wands", description: "A group of people celebrate under a canopy of flowers and ribbons, representing community and harmony." },
          { name: "Five of Wands", description: "Several figures appear to be fighting with wands, representing conflict and competition."},  
          { name: "Six of Wands", description: "A figure rides a horse with a wreath held high, being celebrated by others, representing victory and success." },  
          { name: "Seven of Wands", description: "A figure stands on a hill with a wand, fending off attackers, representing perseverance and determination." }, 
          { name: "Eight of Wands", description: "Eight wands fly through the air with a sense of urgency, representing swift action and progress." },  
          { name: "Nine of Wands", description: "A figure stands holding a wand defensively, surrounded by eight other wands, representing resilience and preparation." },  
          { name: "Ten of Wands", description: "A figure struggles to carry ten wands, representing burden and responsibility." },
          { name: "Page of Wands", description: "A figure holds a wand with eagerness and curiosity, representing enthusiasm and potential." },  
          { name: "Knight of Wands", description: "A figure rides a horse while holding a wand with confidence, representing energy and action." },
          { name: "Queen of Wands", description: "A figure sits on a throne with a wand and a black cat, representing warmth and creativity." },
          { name: "King of Wands", description: "A figure sits on a throne holding a wand with a confident gaze, representing leadership and ambition." },
        # Swords Suit
          { name: "Ace of Swords", description: "The Ace of Swords represents a new beginning, mental clarity, and the power of the mind to cut through confusion and obstacles." },
          { name: "Two of Swords", description: "The Two of Swords represents a difficult decision that requires balance and impartiality, as well as the need to face one's fears and doubts." },
          { name: "Three of Swords", description: "The Three of Swords represents heartbreak, loss, and betrayal, as well as the need to confront painful emotions and heal from past wounds." },
          { name: "Four of Swords", description: "The Four of Swords represents rest, meditation, and the need to recharge one's energy, as well as the possibility of recovery and healing from illness or injury." },
          { name: "Five of Swords", description: "The Five of Swords represents conflict, defeat, and betrayal, as well as the need to accept responsibility for one's actions and learn from mistakes." },
          { name: "Six of Swords", description: "The Six of Swords represents a journey or transition to a new phase of life, as well as the need to let go of the past and move on with hope and optimism." },
          { name: "Seven of Swords", description: "The Seven of Swords represents deception, trickery, and theft, as well as the need to be cautious and protect oneself from harm." },
          { name: "Eight of Swords", description: "The Eight of Swords represents feeling trapped or stuck, as well as the need to confront one's fears and limiting beliefs in order to find a way forward." },
          { name: "Nine of Swords", description: "The Nine of Swords represents anxiety, fear, and nightmares, as well as the need to confront and heal from one's inner demons and negative thoughts." },
          { name: "Ten of Swords", description: "The Ten of Swords represents a painful ending, betrayal, and loss, as well as the need to release and let go of the past in order to move on and begin anew." },
          { name: "Page of Swords", description: "The Page of Swords represents curiosity, intelligence, and the desire to learn and explore, as well as the need to communicate and express oneself clearly and truthfully." },
          { name: "Knight of Swords", description: "The Knight of Swords represents action, ambition, and the pursuit of one's goals, as well as the need to stay focused and avoid recklessness or impulsiveness." },
          { name: "Queen of Swords", description: "The Queen of Swords represents independence, logic, and the ability to make tough decisions, as well as the need to stay objective and avoid emotional manipulation." },
          { name: "King of Swords", description: "The King of Swords represents authority, power, and the ability to make fair and just decisions, as well as the need to balance one's intellect with empathy and compassion." },
        # Pentacle Suit
          { name: "Ace of Pentacles", description: "The Ace of Pentacles represents new beginnings, prosperity, and material abundance." },
          { name: "Two of Pentacles", description: "The Two of Pentacles represents balance, juggling priorities, and adapting to change." },
          { name: "Three of Pentacles", description: "The Three of Pentacles represents collaboration, teamwork, and mastery." },
          { name: "Four of Pentacles", description: "The Four of Pentacles represents security, stability, and control." },
          { name: "Five of Pentacles", description: "The Five of Pentacles represents hardship, financial loss, and feeling left out in the cold." },
          { name: "Six of Pentacles", description: "The Six of Pentacles represents generosity, charity, and giving and receiving help." },
          { name: "Seven of Pentacles", description: "The Seven of Pentacles represents hard work, patience, and waiting for results." },
          { name: "Eight of Pentacles", description: "The Eight of Pentacles represents skill development, craftsmanship, and attention to detail." },
          { name: "Nine of Pentacles", description: "The Nine of Pentacles represents self-sufficiency, luxury, and enjoying the fruits of one's labor." },
          { name: "Ten of Pentacles", description: "The Ten of Pentacles represents legacy, inheritance, and the passing down of wealth and traditions." },
          { name: "Page of Pentacles", description: "The Page of Pentacles represents curiosity, exploration, and a desire for knowledge and learning." },
          { name: "Knight of Pentacles", description: "The Knight of Pentacles represents dedication, hard work, and responsibility." },
          { name: "Queen of Pentacles", description: "The Queen of Pentacles represents nurturing, abundance, and practicality." },
          { name: "King of Pentacles", description: "The King of Pentacles represents wealth, stability, and prosperity." },
        # Cups Suit
          { name: "Ace of Cups", description: "The Ace of Cups represents the beginning of emotional energy, new beginnings and spiritual connections. It is a symbol of love, happiness, and compassion." },
          { name: "Two of Cups", description: "The Two of Cups represents a balanced and equal partnership, mutual attraction and deep connections. It is a symbol of harmony, unity and understanding." },
          { name: "Three of Cups", description: "The Three of Cups represents joy, celebration, and community. It is a symbol of friendship, abundance, and a reason to come together." },
          { name: "Four of Cups", description: "The Four of Cups represents apathy, contemplation and self-absorption. It is a symbol of self-reflection, personal growth, and reassessment." },
          { name: "Five of Cups", description: "The Five of Cups represents loss, disappointment, and grief. It is a symbol of mourning, sadness, and a need to process emotions." },
          { name: "Six of Cups", description: "The Six of Cups represents childhood memories, innocence, and nostalgia. It is a symbol of happiness, generosity, and remembering the past." },
          { name: "Seven of Cups", description: "The Seven of Cups represents choices, dreams, and illusions. It is a symbol of opportunities, imagination, and uncertainty." },
          { name: "Eight of Cups", description: "The Eight of Cups represents walking away, abandonment, and sacrifice. It is a symbol of letting go, moving on, and finding deeper meaning." },
          { name: "Nine of Cups", description: "The Nine of Cups represents wish fulfillment, satisfaction, and happiness. It is a symbol of contentment, success, and material abundance." },
          { name: "Ten of Cups", description: "The Ten of Cups represents harmony, happiness, and emotional fulfillment. It is a symbol of long-term relationships, domestic bliss, and shared experiences." },
          { name: "Page of Cups", description: "The Page of Cups represents creative inspiration, intuition, and sensitivity. It is a symbol of artistic expression, new ideas, and emotional depth." },
          { name: "Knight of Cups", description: "The Knight of Cups represents romance, charm, and idealism. It is a symbol of pursuing dreams, following the heart, and emotional maturity." },
          { name: "Queen of Cups", description: "The Queen of Cups represents compassion, nurturing, and emotional intelligence. It is a symbol of intuition, sensitivity, and maternal instincts." },
          { name: "King of Cups", description: "The King of Cups represents emotional balance, control, and maturity. It is a symbol of wisdom, diplomacy, and a calm, rational approach." }
        ]
  
      num_of_cards = params[:num_of_cards].to_i
      @selected_cards = tarot_deck.sample(num_of_cards)
  
      respond_to do |format|
        format.html { render :new }
      end
    end

    def spread
        # Get the requested number of cards from the user input
        num_of_cards = params[:num_of_cards].to_i
        
        # Call the tarot_spread method and pass in the tarot_deck and num_of_cards
        @selected_cards = tarot_spread(tarot_deck, num_of_cards)
        
        # Render the spread view with the selected cards
        render "spread"
    end
    
    def tarot_spread(deck, num_of_cards)
        # Shuffle the tarot deck
        shuffled_deck = deck.shuffle
        
        # Select the requested number of cards from the shuffled deck
        selected_cards = shuffled_deck.sample(num_of_cards)
        
        # Return the selected cards
        selected_cards
    end

    def tarot_spread
        # Prompt the user to enter the number of cards they want in the spread
        puts "How many cards would you like in your Tarot Card Spread?"
        num_of_cards = gets.chomp.to_i
        
        # Redirect to the TarotSpreadsController spread action with the requested number of cards
        redirect_to "/tarot_spreads/spread?num_of_cards=#{num_of_cards}"
    end
end
  