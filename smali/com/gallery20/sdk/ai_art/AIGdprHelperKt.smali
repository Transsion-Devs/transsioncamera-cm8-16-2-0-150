.class public final Lcom/gallery20/sdk/ai_art/AIGdprHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isAIArtGdpr()Z
    .registers 1

    .line 17
    invoke-static {}, Lcom/transsion/transsion_gdpr/GdprUtil;->getCallback()Lcom/transsion/transsion_gdpr/GdprCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/gallery20/sdk/ai_art/AIArtGdprCallback;

    return v0
.end method

.method public static final showAIGdprAndThen(ILcom/gallery20/sdk/ai_art/UserAgreeCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/gallery20/sdk/ai_art/AIGdprHelper;

    invoke-direct {v0, p0}, Lcom/gallery20/sdk/ai_art/AIGdprHelper;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/gallery20/sdk/ai_art/AIGdprHelper;->showAndThen(Lcom/gallery20/sdk/ai_art/UserAgreeCallback;)V

    return-void
.end method
