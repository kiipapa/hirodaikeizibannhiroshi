FactoryBot.define do

  factory :sogo, class: Post do

    univ_id  { 1 }
    
  end

  factory :invalid_sogo, class: Post do

    univ_id  { 2 }

  end

  factory :bun, class: Post do

    univ_id  { 2 }
    
  end

  factory :invalid_bun, class: Post do

    univ_id  { 3 }

  end

  factory :igaku, class: Post do

    univ_id  { 3 }
    
  end

  factory :invalid_igaku, class: Post do

    univ_id  { 4 }

  end

end
