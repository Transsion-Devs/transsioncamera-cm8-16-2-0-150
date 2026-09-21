.class public final enum Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEGetFrameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEMirrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

.field public static final enum NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

.field public static final enum X_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

.field public static final enum Y_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 47
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    const-string v1, "NO_MIRROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 48
    new-instance v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    const-string v2, "X_MIRROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->X_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 49
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    const-string v3, "Y_MIRROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->Y_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 46
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
    .registers 2

    .line 46
    const-class v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
    .registers 1

    .line 46
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-object v0
.end method
