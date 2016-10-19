DECLARE @Probs int
BEGIN TRY
   SELECT 'This will work'
   BEGIN TRY
     SELECT @Probs='Not Right'
      SELECT 10+5,
     'This will also work, however the error means it will not run'
   END TRY
   BEGIN CATCH
      THROW
   END CATCH
   SELECT 'The THROW means this is skipped'
END TRY
BEGIN CATCH
   SELECT 'An error has occurred at line ' +
       LTRIM(STR(ERROR_LINE())) +
      ' with error ' + LTRIM(STR(ERROR_NUMBER())) + ' ' + ERROR_MESSAGE()
       IF @@TRANCOUNT > 0
          
          ROLLBACK TRAN
END CATCH
