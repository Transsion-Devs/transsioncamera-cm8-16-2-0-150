.class public final Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;
.super Lcom/gallery20/sdk/ai_art/AIArtGdprCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/AIGdprHelper;->showAndThen(Lcom/gallery20/sdk/ai_art/UserAgreeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/gallery20/sdk/ai_art/UserAgreeCallback;


# direct methods
.method constructor <init>(Lcom/gallery20/sdk/ai_art/UserAgreeCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;->$callback:Lcom/gallery20/sdk/ai_art/UserAgreeCallback;

    .line 27
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/AIArtGdprCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeCallback(Landroid/app/Activity;)V
    .registers 2

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/transsion/transsion_gdpr/GdprUtil;->release()V

    return-void
.end method

.method public onPositiveCallback(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/AIGdprHelper$showAndThen$1;->$callback:Lcom/gallery20/sdk/ai_art/UserAgreeCallback;

    invoke-interface {p0}, Lcom/gallery20/sdk/ai_art/UserAgreeCallback;->onUserAgree()V

    .line 34
    invoke-static {}, Lcom/transsion/transsion_gdpr/GdprUtil;->release()V

    return-void
.end method
