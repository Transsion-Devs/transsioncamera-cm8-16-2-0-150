.class public final enum Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEGetFrameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEGetFrameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum FOLLOW_SHOT_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum HD_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum NO_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field public static final enum SEQUENCE_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 15
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v1, "NORMAL_GET_FRAME_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 16
    new-instance v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v2, "HD_GET_FRAME_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->HD_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 17
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v3, "RENDER_PICTURE_MODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 18
    new-instance v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v4, "FOLLOW_SHOT_FRAME_MODE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->FOLLOW_SHOT_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 19
    new-instance v4, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v5, "SEQUENCE_FRAME_MODE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->SEQUENCE_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 20
    new-instance v5, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const-string v6, "NO_FRAME_MODE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NO_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 14
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    .registers 2

    .line 14
    const-class v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    .registers 1

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-object v0
.end method
