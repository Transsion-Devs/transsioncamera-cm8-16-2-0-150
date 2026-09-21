.class public final enum Lcom/tetras/hand/model/CvHandStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/hand/model/CvHandStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_DISTANCE_OUT:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_MOVE_DOWN:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_MOVE_LEFT:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_MOVE_RIGHT:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_MOVE_UP:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final enum CV_HAND_UNKNOW:Lcom/tetras/hand/model/CvHandStatusCode;

.field public static final DESCRIPTION_CV_HAND_DISTANCE_OUT:Ljava/lang/String; = "\u8ddd\u79bb\u5c4f\u5e55\u8fc7\u8fd1"

.field public static final DESCRIPTION_CV_HAND_MOVE_DOWN:Ljava/lang/String; = "\u624b\u52bf\u671d\u4e0b\u79fb\u52a8"

.field public static final DESCRIPTION_CV_HAND_MOVE_LEFT:Ljava/lang/String; = "\u624b\u52bf\u671d\u5de6\u79fb\u52a8"

.field public static final DESCRIPTION_CV_HAND_MOVE_RIGHT:Ljava/lang/String; = "\u624b\u52bf\u671d\u53f3\u79fb\u52a8"

.field public static final DESCRIPTION_CV_HAND_MOVE_UP:Ljava/lang/String; = "\u624b\u52bf\u671d\u4e0a\u79fb\u52a8"

.field public static final DESCRIPTION_CV_HAND_RECT_EDGE:Ljava/lang/String; = "\u624b\u52bf\u5750\u6807\u8ddd\u79bb\u5c4f\u5e55\u8fb9\u7f18\u8fc7\u8fd1"

.field public static final DESCRIPTION_CV_HAND_UNKNOW:Ljava/lang/String; = "\u65e0\u6cd5\u5224\u65ad"


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 4
    new-instance v0, Lcom/tetras/hand/model/CvHandStatusCode;

    const/4 v1, -0x2

    const-string v2, "CV_HAND_DISTANCE_OUT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_DISTANCE_OUT:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 5
    new-instance v1, Lcom/tetras/hand/model/CvHandStatusCode;

    const/4 v2, -0x1

    const-string v4, "CV_HAND_UNKNOW"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_UNKNOW:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 6
    new-instance v2, Lcom/tetras/hand/model/CvHandStatusCode;

    const-string v4, "CV_HAND_MOVE_UP"

    const/4 v6, 0x2

    invoke-direct {v2, v4, v6, v3}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_MOVE_UP:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 7
    new-instance v3, Lcom/tetras/hand/model/CvHandStatusCode;

    const-string v4, "CV_HAND_MOVE_LEFT"

    const/4 v7, 0x3

    invoke-direct {v3, v4, v7, v5}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_MOVE_LEFT:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 8
    new-instance v4, Lcom/tetras/hand/model/CvHandStatusCode;

    const-string v5, "CV_HAND_MOVE_DOWN"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v8, v6}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_MOVE_DOWN:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 9
    new-instance v5, Lcom/tetras/hand/model/CvHandStatusCode;

    const-string v6, "CV_HAND_MOVE_RIGHT"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/tetras/hand/model/CvHandStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tetras/hand/model/CvHandStatusCode;->CV_HAND_MOVE_RIGHT:Lcom/tetras/hand/model/CvHandStatusCode;

    .line 3
    filled-new-array/range {v0 .. v5}, [Lcom/tetras/hand/model/CvHandStatusCode;

    move-result-object v0

    sput-object v0, Lcom/tetras/hand/model/CvHandStatusCode;->$VALUES:[Lcom/tetras/hand/model/CvHandStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/tetras/hand/model/CvHandStatusCode;->statusCode:I

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_22

    const/4 p0, 0x0

    return-object p0

    .line 37
    :pswitch_5
    const-string/jumbo p0, "\u624b\u52bf\u671d\u53f3\u79fb\u52a8"

    return-object p0

    .line 35
    :pswitch_9
    const-string/jumbo p0, "\u624b\u52bf\u671d\u4e0b\u79fb\u52a8"

    return-object p0

    .line 33
    :pswitch_d
    const-string/jumbo p0, "\u624b\u52bf\u671d\u5de6\u79fb\u52a8"

    return-object p0

    .line 31
    :pswitch_11
    const-string/jumbo p0, "\u624b\u52bf\u671d\u4e0a\u79fb\u52a8"

    return-object p0

    .line 29
    :pswitch_15
    const-string/jumbo p0, "\u65e0\u6cd5\u5224\u65ad"

    return-object p0

    .line 27
    :pswitch_19
    const-string/jumbo p0, "\u8ddd\u79bb\u5c4f\u5e55\u8fc7\u8fd1"

    return-object p0

    .line 25
    :pswitch_1d
    const-string/jumbo p0, "\u624b\u52bf\u5750\u6807\u8ddd\u79bb\u5c4f\u5e55\u8fb9\u7f18\u8fc7\u8fd1"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch -0x3
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/hand/model/CvHandStatusCode;
    .registers 2

    .line 3
    const-class v0, Lcom/tetras/hand/model/CvHandStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/hand/model/CvHandStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/tetras/hand/model/CvHandStatusCode;
    .registers 1

    .line 3
    sget-object v0, Lcom/tetras/hand/model/CvHandStatusCode;->$VALUES:[Lcom/tetras/hand/model/CvHandStatusCode;

    invoke-virtual {v0}, [Lcom/tetras/hand/model/CvHandStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/hand/model/CvHandStatusCode;

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/tetras/hand/model/CvHandStatusCode;->statusCode:I

    return p0
.end method
