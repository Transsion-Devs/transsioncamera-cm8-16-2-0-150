.class public final enum Lcom/ss/android/vesdk/VEEffectEngineMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEffectEngineMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEffectEngineMode;

.field public static final enum EFFECT_NEW_ENGINE:Lcom/ss/android/vesdk/VEEffectEngineMode;

.field public static final enum EFFECT_NEW_OLD_ENGINE_COEXIST:Lcom/ss/android/vesdk/VEEffectEngineMode;


# instance fields
.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEEffectEngineMode;

    const-string v1, "EFFECT_NEW_ENGINE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/vesdk/VEEffectEngineMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEffectEngineMode;->EFFECT_NEW_ENGINE:Lcom/ss/android/vesdk/VEEffectEngineMode;

    .line 15
    new-instance v1, Lcom/ss/android/vesdk/VEEffectEngineMode;

    const-string v2, "EFFECT_NEW_OLD_ENGINE_COEXIST"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/vesdk/VEEffectEngineMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEEffectEngineMode;->EFFECT_NEW_OLD_ENGINE_COEXIST:Lcom/ss/android/vesdk/VEEffectEngineMode;

    .line 6
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEEffectEngineMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEffectEngineMode;->$VALUES:[Lcom/ss/android/vesdk/VEEffectEngineMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/ss/android/vesdk/VEEffectEngineMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEffectEngineMode;
    .registers 2

    .line 6
    const-class v0, Lcom/ss/android/vesdk/VEEffectEngineMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEffectEngineMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEffectEngineMode;
    .registers 1

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/VEEffectEngineMode;->$VALUES:[Lcom/ss/android/vesdk/VEEffectEngineMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEffectEngineMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEffectEngineMode;

    return-object v0
.end method
