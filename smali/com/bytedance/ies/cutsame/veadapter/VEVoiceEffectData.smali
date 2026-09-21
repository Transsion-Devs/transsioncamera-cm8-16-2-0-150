.class public final Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;
    }
.end annotation


# static fields
.field private static final AUDIO_EFFECT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEMALE:Ljava/lang/String; = "{\n                \"type\":1,\n                \"phaseResetMode\":0,\n                \"semiton\":0,\n                \"formatShiftOn\":false,\n                \"blockSize\":1024,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.448803186416626,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":0,\n                \"speedRatio\":0,\n                \"windowMode\":0,\n                \"pitchTunerMode\":0,\n                \"processChMode\":0\n            }"

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;

.field private static final LOLI:Ljava/lang/String; = "{\n                \"type\":2,\n                \"phaseResetMode\":2,\n                \"semiton\":9,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.14029255509376526,\n                \"smoothOn\":true,\n                \"centtone\":3.0110294818878174,\n                \"transientDetectMode\":2,\n                \"speedRatio\":-0.030373087152838707,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

.field private static final MALE:Ljava/lang/String; = "{\n                \"type\":7,\n                \"phaseResetMode\":2,\n                \"semiton\":-8.495404243469238,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.14029255509376526,\n                \"smoothOn\":true,\n                \"centtone\":3.0110294818878174,\n                \"transientDetectMode\":2,\n                \"speedRatio\":-0.030373087152838707,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

.field private static final MONSTER:Ljava/lang/String; = "{\n                \"type\":5,\n                \"phaseResetMode\":1,\n                \"semiton\":9.702205657958984,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":-1.6893284320831299,\n                \"smoothOn\":true,\n                \"centtone\":-0.2054227888584137,\n                \"transientDetectMode\":2,\n                \"speedRatio\":0.30875319242477417,\n                \"windowMode\":1,\n                \"pitchTunerMode\":0,\n                \"processChMode\":1\n            }"

.field private static final NORMAL:Ljava/lang/String; = "{\n                \"type\":6,\n                \"phaseResetMode\":2,\n                \"semiton\":0,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":2,\n                \"speedRatio\":1,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

.field private static final UNCLE:Ljava/lang/String; = "{\n                \"type\":3,\n                \"phaseResetMode\":0,\n                \"semiton\":-4,\n                \"formatShiftOn\":false,\n                \"blockSize\":1024,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":0,\n                \"speedRatio\":0,\n                \"windowMode\":0,\n                \"pitchTunerMode\":0,\n                \"processChMode\":0\n            }"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;->INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;

    .line 138
    const-string v0, "boy"

    const-string v1, "{\n                \"type\":7,\n                \"phaseResetMode\":2,\n                \"semiton\":-8.495404243469238,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.14029255509376526,\n                \"smoothOn\":true,\n                \"centtone\":3.0110294818878174,\n                \"transientDetectMode\":2,\n                \"speedRatio\":-0.030373087152838707,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 139
    const-string v0, "girl"

    const-string v1, "{\n                \"type\":1,\n                \"phaseResetMode\":0,\n                \"semiton\":0,\n                \"formatShiftOn\":false,\n                \"blockSize\":1024,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.448803186416626,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":0,\n                \"speedRatio\":0,\n                \"windowMode\":0,\n                \"pitchTunerMode\":0,\n                \"processChMode\":0\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 140
    const-string v0, "loli"

    const-string v1, "{\n                \"type\":2,\n                \"phaseResetMode\":2,\n                \"semiton\":9,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0.14029255509376526,\n                \"smoothOn\":true,\n                \"centtone\":3.0110294818878174,\n                \"transientDetectMode\":2,\n                \"speedRatio\":-0.030373087152838707,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 141
    const-string v0, "uncle"

    const-string v1, "{\n                \"type\":3,\n                \"phaseResetMode\":0,\n                \"semiton\":-4,\n                \"formatShiftOn\":false,\n                \"blockSize\":1024,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":0,\n                \"speedRatio\":0,\n                \"windowMode\":0,\n                \"pitchTunerMode\":0,\n                \"processChMode\":0\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 142
    const-string v0, "monster"

    const-string v1, "{\n                \"type\":5,\n                \"phaseResetMode\":1,\n                \"semiton\":9.702205657958984,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":-1.6893284320831299,\n                \"smoothOn\":true,\n                \"centtone\":-0.2054227888584137,\n                \"transientDetectMode\":2,\n                \"speedRatio\":0.30875319242477417,\n                \"windowMode\":1,\n                \"pitchTunerMode\":0,\n                \"processChMode\":1\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 143
    const-string v0, "none"

    const-string v1, "{\n                \"type\":6,\n                \"phaseResetMode\":2,\n                \"semiton\":0,\n                \"formatShiftOn\":false,\n                \"blockSize\":2048,\n                \"phaseAdjustMethod\":0,\n                \"octative\":0,\n                \"smoothOn\":false,\n                \"centtone\":0,\n                \"transientDetectMode\":2,\n                \"speedRatio\":1,\n                \"windowMode\":2,\n                \"pitchTunerMode\":2,\n                \"processChMode\":1\n            }"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;->AUDIO_EFFECT_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAUDIO_EFFECT_MAP()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object p0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;->AUDIO_EFFECT_MAP:Ljava/util/Map;

    return-object p0
.end method
