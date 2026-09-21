.class final Lcom/gallery20/sdk/ai_art/AIGdprHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final title:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gallery20/sdk/ai_art/AIGdprHelper;->title:I

    return-void
.end method


# virtual methods
.method public final showAndThen(Lcom/gallery20/sdk/ai_art/UserAgreeCallback;)V
    .registers 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;

    invoke-direct {v0, p1}, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;-><init>(Lcom/gallery20/sdk/ai_art/UserAgreeCallback;)V

    .line 37
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;->setNetworkLink()V

    .line 38
    sget p1, Lcom/gallery20/base/base_app/R$string;->ai_art_gdpr_user_agreement_link:I

    invoke-virtual {v0, p1}, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;->setUserAgreementLinkRes(I)V

    .line 39
    sget p1, Lcom/gallery20/base/base_app/R$string;->ai_art_gdpr_privacy_policy_link:I

    invoke-virtual {v0, p1}, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;->setPrivacyLinkRes(I)V

    .line 36
    check-cast v0, Lcom/transsion/transsion_gdpr/GdprCallback;

    .line 27
    invoke-static {v0}, Lcom/transsion/transsion_gdpr/GdprUtil;->init(Lcom/transsion/transsion_gdpr/GdprCallback;)V

    .line 42
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_23

    return-void

    .line 44
    :cond_23
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-direct {v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;-><init>()V

    .line 45
    iget p0, p0, Lcom/gallery20/sdk/ai_art/AIGdprHelper;->title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setTitleText(Ljava/lang/String;)V

    .line 46
    sget p0, Lcom/gallery20/base/base_app/R$string;->ai_art_gdpr_content:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setContentText(Ljava/lang/String;)V

    .line 47
    sget p0, Lcom/gallery20/base/base_app/R$string;->common_cancel:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setNegativeButtonText(Ljava/lang/String;)V

    .line 48
    sget p0, Lcom/gallery20/base/base_app/R$string;->common_agree:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setPositiveButtonText(Ljava/lang/String;)V

    .line 49
    sget p0, Lcom/gallery20/base/base_app/R$string;->common_user_agreement:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setClickUserAgreementText(Ljava/lang/String;)V

    .line 50
    sget p0, Lcom/gallery20/base/base_app/R$string;->common_privacy_policy:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setClickPrivacyPolicyText(Ljava/lang/String;)V

    .line 51
    :try_start_62
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    sget p0, Lcom/gallery20/base/base_app/R$string;->common_user_announcement:I

    invoke-virtual {v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setAnnouncementText(Ljava/lang/String;)V

    .line 53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_83

    goto :goto_8d

    :catchall_83
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_8d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p0, 0x1

    .line 44
    invoke-static {v0, p0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil;->wantToShowGdpr(Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method
