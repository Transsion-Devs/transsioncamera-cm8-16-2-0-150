.class public final enum Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEGetFrameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEGetFrameFitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

.field public static final enum CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

.field public static final enum CENTER_INSIDE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

.field public static final enum NONE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->NONE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 28
    new-instance v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    const-string v2, "CENTER_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_INSIDE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 29
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    const-string v3, "CENTER_CROP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 26
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
    .registers 2

    .line 26
    const-class v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
    .registers 1

    .line 26
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-object v0
.end method
