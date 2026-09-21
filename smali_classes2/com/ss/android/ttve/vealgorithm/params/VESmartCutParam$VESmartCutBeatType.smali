.class public final enum Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VESmartCutBeatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

.field public static final enum VESmartCutBeatTypeDownBeats:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

.field public static final enum VESmartCutBeatTypeManMade:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

.field public static final enum VESmartCutBeatTypeVeBeats:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 32
    new-instance v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    const-string v1, "VESmartCutBeatTypeDownBeats"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->VESmartCutBeatTypeDownBeats:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    .line 33
    new-instance v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    const-string v2, "VESmartCutBeatTypeVeBeats"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->VESmartCutBeatTypeVeBeats:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    .line 34
    new-instance v2, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    const-string v3, "VESmartCutBeatTypeManMade"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->VESmartCutBeatTypeManMade:Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;
    .registers 2

    .line 31
    const-class v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;
    .registers 1

    .line 31
    sget-object v0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->$VALUES:[Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/vealgorithm/params/VESmartCutParam$VESmartCutBeatType;

    return-object v0
.end method
