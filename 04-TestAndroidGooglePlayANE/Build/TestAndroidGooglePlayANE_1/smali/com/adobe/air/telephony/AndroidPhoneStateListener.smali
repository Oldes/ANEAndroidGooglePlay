.class Lcom/adobe/air/telephony/AndroidPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AndroidTelephonyManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private native nativeOnCallStateChanged(I)V
.end method

.method private toAIRCallState(I)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 104
    const/4 v2, 0x0

    .line 106
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v0, :cond_0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/adobe/air/telephony/AndroidPhoneStateListener;->toAIRCallState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/air/telephony/AndroidPhoneStateListener;->nativeOnCallStateChanged(I)V

    .line 99
    return-void
.end method
