module RubyBancbox
  class Cfp

    class << self

      def create_investor(options = {})
        # reference_id
        # first_name
        # last_name
        # phone
        post( '/createInvestor', options )
      end

      def submit_agreement(options = {})
        post( '/submitAgreemnt', options)
      end

      def verify_identity(options = {})
        post('/verifyIdentity', options)
      end

      def create_issuer(options = {})
        post('/createIssuer', options)
      end

      def open_escrow(options = {})
        post('/createEscrowAccount', options)
      end

      def fund_account(options = {})
        post('/fundAccount', options)
      end

      def fund_escrow(options = {})
        post('/fundEscrow', options)
      end

      def change_investor_contribution(options = {})
        post('/changeInvestorContribution', options)
      end

      def cancel_escrow(options = {})
        post('/cancelEscrow', options)
      end

      def close_escrow(options = {})
        post('/closeEscrow', options)
      end

      def get_escrow(options = {})
        post('/getEscrowDetails', options)

      end

      def list_escrow_accounts
        post('/getEscrowList')

      end

      def get_escrow_activity(options = {})
        post('/getActivityDetails', options)
      end

      def list_investors
        post('/getInvestorList')
      end

      def get_investor(options = {})
        # investor_id
        post('/getInvestorDetails', options)
      end

      def list_issuers
        post('/getIssuerList')

      end

      def get_issuer(options = {})
        post('/getIssuerDetails', options)
      end

      def disburse_escrow(options = {})
        post('/disburseEscrow', options)
      end

      def get_investment_ledger(options = {})
        post('/getInvestmentLedger', options)
      end

      def update_investment_ledger(options = {})
        post('/updateInvestmentLedger', options)
      end

      def freeze_investment_ledger(options = {})
        post('/freezeInvestmentLedger', options)
      end

      def create_proceeds_schedules(options = {})
        post('/createProceedsSchedules', options)
      end

      def get_proceeds_schedules(options = {})
        post('/getProceedsSchedules', options)
      end

      def cancel_proceeds_schedules(options = {})
        post('/cancelProceedsSchedules', options)
      end

      def withdraw_funds(options = {})
        post('/withdrawFunds', options)
      end

      def modify_escrow(options = {})
        post('/updateEscrowAccount', options)
      end

      def transfer_funds(options = {})
        post('/transferFunds', options)
      end

      def link_external_account(options = {})
        post('/linkExternalAccount', options)
      end

      def confirm_wire_transfer(options = {})
        post('/confirmWireTransfer', options)
      end

      def verify_income(options = {})
        post('/verifyIncome', options)
      end

      def accredit_investor_3rd_party(options = {})
        post('/accreditInvestor3rdParty', options)
      end

      def get_verification_status(options = {})
        post('/getVerificationStatus', options)
      end

      def get_activity(options = {})
        post('/getActivity', options)
      end

      def get_ledger(options = {})
        post('/getLedger', options)
      end

      def create_challenge_deposit(options = {})
        post('/createChallengeDeposit', options)
      end

      def verify_challenge_deposit(options = {})
        post('/verifyChallengeDeposit', options)
      end

      def get_challenge_deposit_status(options = {})
        post('/getChallengeDepositStatus', options)
      end

      def update_investor(options = {})
        post('/updateInvestor', options)
      end

      def update_issuer(options = {})
        post('/updateIssuer', options)
      end

      private

      def credentials
       { api_key: RubyBancbox.configuration.api_key, secret: RubyBancbox.configuration.secret }
      end

      def post(path, options = {})
        JSON.parse(
          RestClient.post(
            RubyBancbox.configuration.base_url + path, options.merge(credentials)
          )
        )
      end
    end

  end
end