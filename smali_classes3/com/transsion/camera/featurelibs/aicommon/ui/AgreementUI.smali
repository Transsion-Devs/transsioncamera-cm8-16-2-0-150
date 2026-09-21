.class public Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

.field private mAgreementUIListener:Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;

.field private mDetailLinkView:Landroid/widget/TextView;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mRootView:Landroid/view/View;

.field private mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# direct methods
.method public static synthetic $r8$lambda$764_bJeNwVwND8Xl8VXmLRmOED8(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->lambda$showAgreementUI$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BgT72NIrtWvV7HXA7xs81vFvT9M(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->lambda$showAgreementUI$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYYLFT1mkNo2c1b0ljmkzSWa2kk(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->lambda$showAgreementUI$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$id8-ltFKirM3SMhwWZfjBQaA9FU(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->lambda$showAgreementUI$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvbJe1AQ1YtBJ0eFllSCo10TurM(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->lambda$initAgreementView$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AgreementUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 53
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    return-void
.end method

.method private addClickSpan(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 187
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2e

    .line 202
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addClickSpan error, spannableString: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", clickSpan: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    const/16 p3, 0x21

    .line 207
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private createAgreementView()Landroid/view/View;
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_agreement_dialog_layout:I

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mRootView:Landroid/view/View;

    .line 134
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_agreement_detail_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDetailLinkView:Landroid/widget/TextView;

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->initAgreementView()V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method private hideDialog()V
    .registers 3

    .line 122
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_11

    .line 125
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->hide()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_11
    return-void
.end method

.method private initAgreementView()V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_agreement_dialog_content_detail_link:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_agreement_dialog_agree:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_user_agreement:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_privacy_policy:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    :try_start_2a
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_3a

    .line 173
    :catch_33
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "format detailLinkText exception"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    :goto_3a
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_user_agreement_link:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->addClickSpan(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_privacy_policy_link:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v3, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->addClickSpan(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDetailLinkView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDetailLinkView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private synthetic lambda$initAgreementView$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    if-eq p1, p2, :cond_10

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1a

    goto :goto_23

    .line 153
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 154
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_23

    .line 146
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_23

    .line 147
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showAgreementUI$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;->agree(Z)V

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showAgreementUI$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showAgreementUI$2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 98
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementUIListener:Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;

    if-eqz p1, :cond_16

    .line 103
    invoke-interface {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;->onAgreementDismiss()V

    .line 105
    :cond_16
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 106
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mRootView:Landroid/view/View;

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDetailLinkView:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic lambda$showAgreementUI$3(Landroid/content/DialogInterface;)V
    .registers 3

    .line 111
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onAgreementUIShow"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;->agreementShowed()V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementUIListener:Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;

    if-eqz p0, :cond_13

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;->onAgreementShow()V

    :cond_13
    return-void
.end method


# virtual methods
.method public setAgreementUIListener(Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementUIListener:Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public settingReady()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;->firstEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->showAgreementUI()V

    :cond_b
    return-void
.end method

.method public showAgreementUI()V
    .registers 4

    .line 79
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAgreementUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->hideDialog()V

    .line 83
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_agreement_dialog_title:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->createAgreementView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_agreement_dialog_agree:I

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_agreement_dialog_cancel:I

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 97
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->hideDialog()V

    return-void
.end method
