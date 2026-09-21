.class final Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/audio/AudioCompiler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    .registers 3

    .line 52
    sget-object v0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->Companion:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context.applicationContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;->getInstance(Landroid/content/Context;)Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;->invoke()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object p0

    return-object p0
.end method
