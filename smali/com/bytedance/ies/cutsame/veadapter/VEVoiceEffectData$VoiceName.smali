.class public final Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceName"
.end annotation


# static fields
.field public static final BOY:Ljava/lang/String; = "boy"

.field public static final GIRL:Ljava/lang/String; = "girl"

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;

.field public static final LOLI:Ljava/lang/String; = "loli"

.field public static final MONSTER:Ljava/lang/String; = "monster"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final UNCLE:Ljava/lang/String; = "uncle"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;->INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/VEVoiceEffectData$VoiceName;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
