.class public final enum Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VESmartCutBeatMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

.field public static final enum VESmartCutModeSelective:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

.field public static final enum VESmartCutModeSequential:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    const-string v1, "VESmartCutModeSequential"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->VESmartCutModeSequential:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    .line 23
    new-instance v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    const-string v2, "VESmartCutModeSelective"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->VESmartCutModeSelective:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    .line 21
    filled-new-array {v0, v1}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;
    .registers 2

    .line 21
    const-class v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;
    .registers 1

    .line 21
    sget-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatMode;

    return-object v0
.end method
