.class public final Lcom/cutsame/solution/player/audio/CutSameAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/player/audio/ICutSameAudio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;


# instance fields
.field public final a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/player/audio/CutSameAudioManager;->Companion:Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 3

    const-string v0, "nleEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/player/audio/CutSameAudioManager;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cutsame/solution/player/audio/CutSameAudioManager;->b:Ljava/util/ArrayList;

    return-void
.end method
