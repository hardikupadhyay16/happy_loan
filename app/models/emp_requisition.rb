class EmpRequisition < ApplicationRecord
  belongs_to :user
  enum position: ['New Position', 'Replacement', 'Reorganization', 'Internal Candidates',
                  'External Candidates', 'Internal and External Candidates']
end
