.class public Lcom/amanitadesign/ane/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amanitadesign/ane/GameHelper$GameHelperListener;,
        Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0x9

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_SNAPSHOT:I = 0x8

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"

.field public static mAppContext:Landroid/content/Context;


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientsToUse"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    .line 82
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 85
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 89
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 96
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 109
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 112
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 116
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 127
    iput v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    .line 132
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 140
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 143
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 146
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 149
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    .line 152
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    .line 173
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .line 179
    const/4 v0, 0x3

    iput v0, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    .line 727
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 728
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 193
    iput p2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 223
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 226
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 957
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 958
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 957
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 963
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 964
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 963
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 916
    if-nez p0, :cond_0

    .line 917
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void

    .line 920
    :cond_0
    const/4 v0, 0x0

    .line 922
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 939
    const/16 v1, 0x232a

    const/4 v2, 0x0

    .line 938
    invoke-static {p2, p0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 940
    if-nez v0, :cond_1

    .line 942
    const-string v1, "GameHelper"

    .line 943
    const-string v2, "No standard error dialog available. Making fallback dialog."

    .line 942
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    .line 947
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 946
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 953
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 925
    :pswitch_0
    const/4 v1, 0x2

    .line 924
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 926
    goto :goto_1

    .line 929
    :pswitch_1
    const/4 v1, 0x1

    .line 928
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 930
    goto :goto_1

    .line 933
    :pswitch_2
    const/4 v1, 0x3

    .line 932
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 934
    goto :goto_1

    .line 922
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper error: Operation attempted without setup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string v2, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 616
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resetSignInCancellations()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 619
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 621
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 657
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 628
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 643
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 645
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 648
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 649
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 650
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 653
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 654
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 655
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 444
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 452
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 448
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-void

    .line 664
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 667
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 668
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 669
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[createApiClientBuilder] mSetupDone: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRequestedClients: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 257
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 258
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 260
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .end local v0    # "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 266
    .restart local v0    # "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 267
    const-string v2, "[createApiClientBuilder] Games API"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 268
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 269
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 271
    :cond_1
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 272
    const-string v2, "[createApiClientBuilder] Drive API"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 276
    :cond_2
    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 278
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object v2
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 864
    :goto_0
    return-void

    .line 861
    :cond_0
    const-string v0, "GameHelper"

    .line 862
    const-string v1, "disconnect() called when client was already disconnected."

    .line 861
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0, p1}, Lcom/amanitadesign/ane/GameHelper;->enableDebugLog(Z)V

    .line 500
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 315
    const-string v1, "No GoogleApiClient. Did you call setup()?"

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const-string v0, "GameHelper"

    .line 424
    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "GameHelper"

    .line 406
    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    sget-object v1, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 734
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 733
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "GameHelper"

    .line 465
    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 874
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 875
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->disconnect()V

    .line 876
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 878
    iget v0, p1, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 880
    sget-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amanitadesign/ane/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->showFailureDialog()V

    .line 884
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 885
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 886
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 5

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 743
    .local v0, "cancellations":I
    sget-object v2, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 744
    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    .line 743
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 744
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 745
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** GameHelper ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 991
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! GameHelper WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 970
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    .line 973
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 978
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    .line 981
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Notifying LISTENER of sign-in "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 601
    if-eqz p1, :cond_3

    .line 602
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/amanitadesign/ane/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 607
    :cond_0
    :goto_1
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    .line 599
    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/amanitadesign/ane/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x2329

    const/4 v4, 0x0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: req="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 542
    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 543
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 544
    if-eq p1, v5, :cond_1

    .line 545
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 593
    :goto_1
    return-void

    .line 542
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 550
    :cond_1
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 552
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 553
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 559
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 561
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_1

    .line 563
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 564
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_1

    .line 566
    :cond_4
    if-nez p2, :cond_5

    .line 568
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 569
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 570
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 571
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 572
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 573
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 574
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 577
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 578
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 579
    .local v0, "newCancellations":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: # of cancellations "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 580
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, v4}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 586
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 589
    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 590
    new-instance v2, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 591
    invoke-direct {v2, v3, p2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;-><init>(II)V

    .line 590
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 689
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 691
    if-eqz p1, :cond_2

    .line 692
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 694
    const-string v1, "invitation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 695
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 697
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 698
    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invitation ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 702
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 703
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected: connection hint has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 706
    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 708
    :cond_1
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 710
    const-string v1, "turn_based_match"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 709
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 714
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_2
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->succeedSignIn()V

    .line 715
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 763
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 765
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 766
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 769
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 768
    invoke-static {v3}, Lcom/amanitadesign/ane/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - resolvable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - details: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 774
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 776
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_0

    .line 777
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 778
    const/4 v1, 0x1

    .line 798
    :goto_0
    if-nez v1, :cond_3

    .line 800
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 801
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 802
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 803
    invoke-virtual {p0, v4}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 813
    :goto_1
    return-void

    .line 779
    :cond_0
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_1

    .line 780
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x0

    .line 782
    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_2

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 786
    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 787
    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x1

    .line 789
    goto :goto_0

    .line 790
    :cond_2
    const/4 v1, 0x0

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 794
    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_3
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionSuspended, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->disconnect()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 894
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 895
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 896
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 897
    return-void
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "connectOnStart"    # Z

    .prologue
    .line 353
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 354
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 356
    iput-boolean p2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 358
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 359
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "GameHelper"

    .line 364
    const-string v1, "GameHelper: client was already connected on onStart()"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 368
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 371
    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 380
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 387
    :goto_0
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 388
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 392
    return-void

    .line 385
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    .line 684
    :goto_0
    return-void

    .line 681
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 753
    sget-object v1, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 754
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 753
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 754
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 822
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    if-eqz v1, :cond_0

    .line 823
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 854
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 827
    const-string v1, "No need to resolve issue, activity does not exist anymore"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    const-string v1, "Result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 838
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 839
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 840
    const/16 v3, 0x2329

    .line 839
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_0

    .line 849
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_2
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 850
    new-instance v1, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V

    .line 852
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forcing mConnectOnStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1042
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 1043
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/amanitadesign/ane/GameHelper;->doApiOptionsPreCheck()V

    .line 237
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 238
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    .line 209
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    .line 349
    return-void
.end method

.method public setup(Lcom/amanitadesign/ane/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .prologue
    .line 291
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 292
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 293
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup: requested clients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    .line 306
    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .prologue
    .line 900
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 902
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 904
    .local v0, "actResp":I
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/amanitadesign/ane/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 911
    .end local v0    # "actResp":I
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 907
    .restart local v0    # "actResp":I
    .restart local v1    # "errorCode":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 907
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 520
    :cond_0
    iget v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 521
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 526
    :cond_1
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 527
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 528
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 530
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 718
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 720
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 721
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 722
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 724
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 725
    return-void
.end method
