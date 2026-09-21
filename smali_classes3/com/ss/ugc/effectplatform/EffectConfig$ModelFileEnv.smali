.class public final enum Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/EffectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelFileEnv"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

.field public static final enum ONLINE:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

.field public static final enum TEST:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->TEST:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    new-instance v1, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    const-string v2, "ONLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->ONLINE:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    filled-new-array {v0, v1}, [Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    move-result-object v0

    sput-object v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->$VALUES:[Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 647
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;
    .registers 2

    const-class v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-object p0
.end method

.method public static values()[Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;
    .registers 1

    sget-object v0, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->$VALUES:[Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    invoke-virtual {v0}, [Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    return-object v0
.end method
