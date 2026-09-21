.class public Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VESmartCutParamAudioBeats"
.end annotation


# instance fields
.field public crop_rate:F

.field public downBeatsPath:Ljava/lang/String;

.field public duration_ms:F

.field public manMadePath:Ljava/lang/String;

.field public mode:I

.field public noStrengthBeatsPath:Ljava/lang/String;

.field public onlineBeatsPath:Ljava/lang/String;

.field public start_time_ms:F

.field final synthetic this$0:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;

.field public type:I

.field public veBeatsPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->this$0:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->start_time_ms:F

    .line 44
    iput p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->duration_ms:F

    const p1, 0x3f19999a    # 0.6f

    .line 45
    iput p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->crop_rate:F

    .line 53
    sget-object p1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->VESmartCutModeSelective:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    iget p1, p1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->value:I

    iput p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->mode:I

    .line 54
    sget-object p1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->VESmartCutBeatTypeDownBeats:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    iget p1, p1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->value:I

    iput p1, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutParamAudioBeats;->type:I

    return-void
.end method
