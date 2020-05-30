require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def get_all_players
  all_players = []
  all_players << game_hash[:home][:players]
  all_players << game_hash[:away][:players]
  
  all_players = all_players.flatten
end 

def get_player_by_name(player_name)
  my_player = get_all_players.find do |player|
    player[:player_name] == player_name
  end
end

def num_points_scored(player_name)
  get_player_by_name(player_name)[:points]
end

def shoe_size(player_name)
  get_player_by_name(player_name)[:shoe]
end

def which_team(team_name)
  if game_hash[:home][:team_name] == team_name
    team = game_hash[:home]
  end
  if game_hash[:away][:team_name] == team_name
    team = game_hash[:away]
  end
  team
end 

def team_colors(team_name)
  which_team(team_name)[:colors]
end

def team_names
  teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
  
  teams = teams.flatten
end

def player_numbers(team_name)
  team = which_team(team_name)
  team[:players].collect do |jersey|
    jersey[:number]
  end  
end

def player_stats(player_name)
  get_player_by_name(player_name)
end

def big_shoe_rebounds
  largest = 0
  rebounds = 0
  
  get_all_players.each do |player|
    player_shoe_size = player[:shoe]
    if player_shoe_size > biggest
      biggest = player_shoe_size
      rebounds = player[:rebounds]
      
    end
  end  
  rebounds
end
