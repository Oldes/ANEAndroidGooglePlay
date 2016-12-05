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
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientsToUse"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    .line 83
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 86
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 90
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 97
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 110
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 113
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 117
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 128
    iput v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    .line 133
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 141
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 144
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 147
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 150
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    .line 174
    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .line 180
    const/4 v0, 0x3

    iput v0, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    .line 730
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 731
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 194
    iput p2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v1, :cond_0

    .line 224
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 227
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 960
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 961
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 960
    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 966
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 967
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 966
    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actResp"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 919
    if-nez p0, :cond_0

    .line 920
    const-string v1, "GameHelper"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-void

    .line 923
    :cond_0
    const/4 v0, 0x0

    .line 925
    .local v0, "errorDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 942
    const/16 v1, 0x232a

    const/4 v2, 0x0

    .line 941
    invoke-static {p2, p0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 943
    if-nez v0, :cond_1

    .line 945
    const-string v1, "GameHelper"

    .line 946
    const-string v2, "No standard error dialog available. Making fallback dialog."

    .line 945
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    .line 950
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 952
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 956
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 928
    :pswitch_0
    const/4 v1, 0x2

    .line 927
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 929
    goto :goto_1

    .line 932
    :pswitch_1
    const/4 v1, 0x1

    .line 931
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 933
    goto :goto_1

    .line 936
    :pswitch_2
    const/4 v1, 0x3

    .line 935
    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 937
    goto :goto_1

    .line 925
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
    .line 213
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper error: Operation attempted without setup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string v2, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resetSignInCancellations()V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 622
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 624
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 660
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 646
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 648
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    .line 651
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 652
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 653
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    .line 656
    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 657
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 658
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 447
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 455
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 451
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 667
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 670
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 671
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 672
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    .prologue
    .line 257
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

    .line 258
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    .line 259
    const-string v1, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 261
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 265
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "??? 1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 266
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .end local v0    # "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 267
    .restart local v0    # "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    const-string v2, "??? 2"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 268
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "[createApiClientBuilder] Games API"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 270
    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 271
    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 273
    :cond_1
    const-string v2, "??? 3"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 274
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 275
    const-string v2, "[createApiClientBuilder] Drive API"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 279
    :cond_2
    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 281
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object v2
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 989
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_0
    const-string v0, "GameHelper"

    .line 865
    const-string v1, "disconnect() called when client was already disconnected."

    .line 864
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mDebugLog:Z

    .line 493
    if-eqz p1, :cond_0

    .line 494
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 496
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
    .line 500
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0, p1}, Lcom/amanitadesign/ane/GameHelper;->enableDebugLog(Z)V

    .line 503
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 318
    const-string v1, "No GoogleApiClient. Did you call setup()?"

    .line 317
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const-string v0, "GameHelper"

    .line 427
    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "GameHelper"

    .line 409
    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
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
    .line 483
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 736
    sget-object v1, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 737
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 736
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 738
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSignInError()Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "GameHelper"

    .line 468
    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .prologue
    const/4 v2, 0x0

    .line 877
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 878
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->disconnect()V

    .line 879
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 881
    iget v0, p1, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 883
    sget-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amanitadesign/ane/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->showFailureDialog()V

    .line 887
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 888
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 889
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 434
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
    .line 442
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
    .line 338
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
    .line 438
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
    .line 745
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 746
    .local v0, "cancellations":I
    sget-object v2, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 747
    const-string v3, "GAMEHELPER_SHARED_PREFS"

    const/4 v4, 0x0

    .line 746
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 747
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 748
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 750
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 325
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
    .line 998
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** GameHelper ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 994
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! GameHelper WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 973
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 974
    const/4 v0, 0x0

    .line 976
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
    .line 980
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 981
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    .line 984
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
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Notifying LISTENER of sign-in "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 604
    if-eqz p1, :cond_3

    .line 605
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/amanitadesign/ane/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 610
    :cond_0
    :goto_1
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    .line 602
    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 607
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

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: req="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    if-ne p1, v5, :cond_0

    const-string v2, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 546
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 547
    if-eq p1, v5, :cond_1

    .line 548
    const-string v2, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 596
    :goto_1
    return-void

    .line 545
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 553
    :cond_1
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 555
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    if-nez v2, :cond_2

    .line 556
    const-string v2, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 564
    const-string v2, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_1

    .line 566
    :cond_3
    const/16 v2, 0x2711

    if-ne p2, v2, :cond_4

    .line 567
    const-string v2, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_1

    .line 569
    :cond_4
    if-nez p2, :cond_5

    .line 571
    const-string v2, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 572
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    .line 573
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 574
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 575
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 576
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 577
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 580
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v1

    .line 581
    .local v1, "prevCancellations":I
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->incrementSignInCancellations()I

    move-result v0

    .line 582
    .local v0, "newCancellations":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: # of cancellations "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
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

    .line 582
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, v4}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 589
    .end local v0    # "newCancellations":I
    .end local v1    # "prevCancellations":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAR: responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {p2}, Lcom/amanitadesign/ane/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 592
    const-string v3, ", so giving up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 593
    new-instance v2, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 594
    invoke-direct {v2, v3, p2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;-><init>(II)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 692
    const-string v1, "onConnected: connected!"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 694
    if-eqz p1, :cond_2

    .line 695
    const-string v1, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 697
    const-string v1, "invitation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 698
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 700
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 701
    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 702
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

    .line 705
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-interface {v1, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 706
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected: connection hint has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    const-string v2, " request(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 711
    :cond_1
    const-string v1, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 713
    const-string v1, "turn_based_match"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 712
    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 717
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_2
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->succeedSignIn()V

    .line 718
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    .line 766
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 768
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 769
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   - code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 772
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 771
    invoke-static {v3}, Lcom/amanitadesign/ane/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 773
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

    .line 774
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

    .line 776
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 777
    .local v0, "cancellations":I
    const/4 v1, 0x0

    .line 779
    .local v1, "shouldResolve":Z
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v2, :cond_0

    .line 780
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x1

    .line 801
    :goto_0
    if-nez v1, :cond_3

    .line 803
    const-string v2, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 804
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 805
    iput-boolean v4, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 806
    invoke-virtual {p0, v4}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 816
    :goto_1
    return-void

    .line 782
    :cond_0
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInCancelled:Z

    if-eqz v2, :cond_1

    .line 783
    const-string v2, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x0

    .line 785
    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v0, v2, :cond_2

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 789
    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 791
    const/4 v1, 0x1

    .line 792
    goto :goto_0

    .line 793
    :cond_2
    const/4 v1, 0x0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 798
    iget v3, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_3
    const-string v2, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    const/4 v2, 0x0

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionSuspended, cause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->disconnect()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 897
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 898
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 899
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 900
    return-void
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "connectOnStart"    # Z

    .prologue
    .line 356
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 357
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 359
    iput-boolean p2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 361
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 362
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 364
    iget-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "GameHelper"

    .line 367
    const-string v1, "GameHelper: client was already connected on onStart()"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 371
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 383
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 390
    :goto_0
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 391
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 395
    return-void

    .line 388
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    .line 687
    :goto_0
    return-void

    .line 684
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 756
    sget-object v1, Lcom/amanitadesign/ane/GameHelper;->mAppContext:Landroid/content/Context;

    .line 757
    const-string v2, "GAMEHELPER_SHARED_PREFS"

    .line 756
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 825
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    if-eqz v1, :cond_0

    .line 826
    const-string v1, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 857
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 830
    const-string v1, "No need to resolve issue, activity does not exist anymore"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 837
    const-string v1, "Result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 841
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mExpectingResolution:Z

    .line 842
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    .line 843
    const/16 v3, 0x2329

    .line 842
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException, so connecting again."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->connect()V

    goto :goto_0

    .line 852
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_2
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 853
    new-instance v1, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->giveUp(Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;)V

    .line 855
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2
    .param p1, "connectOnStart"    # Z

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forcing mConnectOnStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1045
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 1046
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/games/Games$GamesOptions;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/amanitadesign/ane/GameHelper;->doApiOptionsPreCheck()V

    .line 238
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 239
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/amanitadesign/ane/GameHelper;->mMaxAutoSignInAttempts:I

    .line 210
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    .line 352
    return-void
.end method

.method public setup(Lcom/amanitadesign/ane/GameHelper$GameHelperListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .prologue
    .line 294
    iget-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 295
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 296
    .local v0, "error":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->logError(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/amanitadesign/ane/GameHelper;->mListener:Lcom/amanitadesign/ane/GameHelper$GameHelperListener;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup: requested clients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/amanitadesign/ane/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mSetupDone:Z

    .line 309
    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .prologue
    .line 903
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    .line 905
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v0

    .line 907
    .local v0, "actResp":I
    iget-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 908
    iget-object v2, p0, Lcom/amanitadesign/ane/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/amanitadesign/ane/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 914
    .end local v0    # "actResp":I
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 910
    .restart local v0    # "actResp":I
    .restart local v1    # "errorCode":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    iget-object v3, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 910
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 523
    :cond_0
    iget v0, p0, Lcom/amanitadesign/ane/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 524
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 529
    :cond_1
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 530
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 531
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 533
    iget-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/GameHelper;->mSignInFailureReason:Lcom/amanitadesign/ane/GameHelper$SignInFailureReason;

    .line 723
    iput-boolean v2, p0, Lcom/amanitadesign/ane/GameHelper;->mConnectOnStart:Z

    .line 724
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mUserInitiatedSignIn:Z

    .line 725
    iput-boolean v1, p0, Lcom/amanitadesign/ane/GameHelper;->mConnecting:Z

    .line 727
    invoke-virtual {p0, v2}, Lcom/amanitadesign/ane/GameHelper;->notifyListener(Z)V

    .line 728
    return-void
.end method
