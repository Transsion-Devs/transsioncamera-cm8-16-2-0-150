.class public final Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)V
    .registers 2

    iput-object p1, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;->a:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 4

    .line 2
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    .line 3
    iget-object v1, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;->a:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;

    # getter for: Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->access$getCachePath$p(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object p0, p0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;->a:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;

    # getter for: Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    invoke-static {p0}, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;->access$getNleEditor$p(Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask$compileNLESession$2;->invoke()Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method
