.class final Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/util/VEUtils;
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


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;->INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;
    .registers 5

    .line 57
    sget p0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->MultiChannelMean:I

    sget v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->SampleMax:I

    or-int/2addr p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const v2, 0xac44

    const/high16 v3, 0x42040000    # 33.0f

    .line 52
    invoke-static {v0, v1, v2, v3, p0}, Lcom/ss/android/vesdk/VEUtils;->createRTAudioWaveformMgr(IIIFI)Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;->invoke()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move-result-object p0

    return-object p0
.end method
