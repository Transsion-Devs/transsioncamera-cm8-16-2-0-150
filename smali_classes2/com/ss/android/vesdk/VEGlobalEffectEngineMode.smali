.class public final enum Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

.field public static final enum GLOBAL_NEW_ENGINE:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

.field public static final enum GLOBAL_NEW_OLD_ENGINE_COEXIST:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

.field public static final enum GLOBAL_OLD_ENGINE:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;


# instance fields
.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    const-string v1, "GLOBAL_OLD_ENGINE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->GLOBAL_OLD_ENGINE:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    .line 15
    new-instance v1, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    const-string v2, "GLOBAL_NEW_OLD_ENGINE_COEXIST"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->GLOBAL_NEW_OLD_ENGINE_COEXIST:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    .line 19
    new-instance v2, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    const-string v3, "GLOBAL_NEW_ENGINE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->GLOBAL_NEW_ENGINE:Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->$VALUES:[Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;
    .registers 2

    .line 6
    const-class v0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;
    .registers 1

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->$VALUES:[Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGlobalEffectEngineMode;

    return-object v0
.end method
