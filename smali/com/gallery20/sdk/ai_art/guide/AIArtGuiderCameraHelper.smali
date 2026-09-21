.class public final Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderCameraHelper;
.super Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    # getter for: Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->cameraBanners:Ljava/util/List;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelperKt;->access$getCameraBanners$p()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/util/List;)V

    return-void
.end method
