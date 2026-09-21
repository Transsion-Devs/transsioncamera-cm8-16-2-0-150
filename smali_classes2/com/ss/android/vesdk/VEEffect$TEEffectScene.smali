.class final enum Lcom/ss/android/vesdk/VEEffect$TEEffectScene;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TEEffectScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEffect$TEEffectScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

.field public static final enum faceInfo:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

.field public static final enum skeleton:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 216
    new-instance v0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    const-string v1, "faceInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    .line 217
    new-instance v1, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    const-string v2, "skeleton"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->skeleton:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    .line 215
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->$VALUES:[Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEffect$TEEffectScene;
    .registers 2

    .line 215
    const-class v0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEffect$TEEffectScene;
    .registers 1

    .line 215
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->$VALUES:[Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    return-object v0
.end method
