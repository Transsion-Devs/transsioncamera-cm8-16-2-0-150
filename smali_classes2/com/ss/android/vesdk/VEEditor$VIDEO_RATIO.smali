.class public final enum Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_RATIO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 480
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v1, "VIDEO_OUT_RATIO_1_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 484
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v2, "VIDEO_OUT_RATIO_4_3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 488
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v3, "VIDEO_OUT_RATIO_3_4"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 492
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v4, "VIDEO_OUT_RATIO_16_9"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 496
    new-instance v4, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v5, "VIDEO_OUT_RATIO_9_16"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 500
    new-instance v5, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const-string v6, "VIDEO_OUT_RATIO_ORIGINAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 476
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    .registers 2

    .line 476
    const-class v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    .registers 1

    .line 476
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object v0
.end method
