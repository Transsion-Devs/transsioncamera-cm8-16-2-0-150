.class public final enum Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEMirrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

.field public static final enum NO_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

.field public static final enum X_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

.field public static final enum Y_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2308
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    const-string v1, "NO_MIRROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    .line 2309
    new-instance v1, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    const-string v2, "X_MIRROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->X_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    .line 2310
    new-instance v2, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    const-string v3, "Y_MIRROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->Y_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    .line 2307
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->$VALUES:[Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;
    .registers 2

    .line 2307
    const-class v0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;
    .registers 1

    .line 2307
    sget-object v0, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->$VALUES:[Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    return-object v0
.end method
