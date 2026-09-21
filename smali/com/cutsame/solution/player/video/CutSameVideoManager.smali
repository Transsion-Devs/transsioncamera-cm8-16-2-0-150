.class public final Lcom/cutsame/solution/player/video/CutSameVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/player/video/ICutSameVideo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;


# instance fields
.field public final a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field public final b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/player/video/CutSameVideoManager;->Companion:Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Landroid/content/Context;)V
    .registers 4

    const-string v0, "nleEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/player/video/CutSameVideoManager;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    iput-object p2, p0, Lcom/cutsame/solution/player/video/CutSameVideoManager;->b:Landroid/content/Context;

    return-void
.end method
