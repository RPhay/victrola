function New-crScript {
   <#
    .SYNOPSIS
        PENDING.

    .DESCRIPTION
        PENDING.

    .INPUTS
        PENDING.

    .OUTPUTS
        [System.Boolean] PENDING
        [System.Exception] If an exception is thrown.

    .EXAMPLE
        C:\PS> New-crScript

    .LINK
        PENDING.
#>

   [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]

   # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
   # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingInvokeExpression", "")]
   # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingWriteHost", "")]
   # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseDeclaredVarsMoreThanAssignments", "")]

   [OutputType([System.Boolean])]

   param()

   begin {
      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Entering 'begin' block"

      [System.Boolean] $Script:Result = $false

      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Exiting 'begin' block"
   }

   process {
      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Entering 'process' block"

      if ($PSCmdlet.ShouldProcess("ShouldProcess?")) {

         try {

         }
         catch {
            throw $("Error encountered in [$($MyInvocation.MyCommand.Name)] - " + $_.Exception)
         }
      }

      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Exiting 'process' block"
   }

   end {
      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Entering 'end' block"

      return $Script:Result

      Write-Verbose -Message "[$($MyInvocation.MyCommand.Name)] - Exiting 'end' block"
   }
}