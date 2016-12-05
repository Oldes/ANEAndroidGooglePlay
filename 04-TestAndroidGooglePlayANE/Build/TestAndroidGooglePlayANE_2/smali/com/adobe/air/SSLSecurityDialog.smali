.class public Lcom/adobe/air/SSLSecurityDialog;
.super Ljava/lang/Object;
.source "SSLSecurityDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final USER_ACTION_TRUST_ALWAYS:Ljava/lang/String; = "always"

.field private static final USER_ACTION_TRUST_NONE:Ljava/lang/String; = "none"

.field private static final USER_ACTION_TRUST_SESSION:Ljava/lang/String; = "session"


# instance fields
.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_useraction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/adobe/air/SSLSecurityDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/SSLSecurityDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    .line 43
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    .line 44
    return-void
.end method

.method private SetUserAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 185
    iput-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 187
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/SSLSecurityDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/air/SSLSecurityDialog;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V
    .locals 11

    .prologue
    .line 62
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    if-nez v0, :cond_4

    .line 68
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->WaitForNewActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    .line 71
    :goto_0
    new-instance v2, Lcom/adobe/air/AndroidAlertDialog;

    invoke-direct {v2, v1}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v2}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 81
    const-string v5, "ssl_certificate_warning"

    invoke-static {v5, v4, v0}, Lcom/adobe/air/utils/Utils;->GetLayoutView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v5

    .line 83
    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 86
    const-string v0, "ServerName"

    invoke-static {v0, v6, v5}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    if-eqz p2, :cond_3

    .line 92
    new-instance v0, Lcom/adobe/air/Certificate;

    invoke-direct {v0}, Lcom/adobe/air/Certificate;-><init>()V

    .line 93
    invoke-virtual {v0, p2}, Lcom/adobe/air/Certificate;->setCertificate([B)Ljava/lang/Boolean;

    .line 100
    :goto_1
    const-string v7, "IDA_CERTIFICATE_DETAILS"

    invoke-static {v7, v4}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 102
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToCommonName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToOrganization()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToOrganizationalUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByCommonName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByOrganization()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByOrganizationalUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedOn()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 112
    const-string v0, "CertificateDetails"

    invoke-static {v0, v6, v5}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 115
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 117
    if-eqz p4, :cond_0

    .line 119
    const-string v0, "IDA_CURL_INTERFACE_ALLSESS"

    invoke-static {v0, v4}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v5, Lcom/adobe/air/SSLSecurityDialog$1;

    invoke-direct {v5, p0}, Lcom/adobe/air/SSLSecurityDialog$1;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v3, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    :cond_0
    const-string v0, "IDA_CURL_INTERFACE_THISSESS"

    invoke-static {v0, v4}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v5, Lcom/adobe/air/SSLSecurityDialog$2;

    invoke-direct {v5, p0}, Lcom/adobe/air/SSLSecurityDialog$2;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v3, v0, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    const-string v0, "IDA_CURL_INTERFACE_NOSESS"

    invoke-static {v0, v4}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v4, Lcom/adobe/air/SSLSecurityDialog$3;

    invoke-direct {v4, p0}, Lcom/adobe/air/SSLSecurityDialog$3;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    new-instance v0, Lcom/adobe/air/SSLSecurityDialog$4;

    invoke-direct {v0, p0}, Lcom/adobe/air/SSLSecurityDialog$4;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v0, Lcom/adobe/air/SSLSecurityDialog$5;

    invoke-direct {v0, p0, v2}, Lcom/adobe/air/SSLSecurityDialog$5;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    :cond_2
    :goto_2
    return-void

    .line 97
    :cond_3
    new-instance v0, Lcom/adobe/air/Certificate;

    invoke-direct {v0, p3}, Lcom/adobe/air/Certificate;-><init>(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 177
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getUserAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method

.method public show(Ljava/lang/String;Landroid/net/http/SslCertificate;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    .line 196
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method

.method public show(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    .line 52
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method
