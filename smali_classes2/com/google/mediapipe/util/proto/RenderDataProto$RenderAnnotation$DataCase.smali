.class public final enum Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

.field public static final enum TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 8875
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8876
    new-instance v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v4, "FILLED_RECTANGLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v3, v2

    .line 8877
    new-instance v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v4, "OVAL"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v4, v3

    .line 8878
    new-instance v3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v5, "FILLED_OVAL"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v5, v4

    .line 8879
    new-instance v4, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v6, "POINT"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v6, v5

    .line 8880
    new-instance v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v7, "LINE"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v7, v6

    .line 8881
    new-instance v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v8, "ARROW"

    const/4 v10, 0x7

    invoke-direct {v6, v8, v9, v10}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v8, v7

    .line 8882
    new-instance v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v9, "TEXT"

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v9, v8

    .line 8883
    new-instance v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v10, "ROUNDED_RECTANGLE"

    const/16 v12, 0x9

    invoke-direct {v8, v10, v11, v12}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v10, v9

    .line 8884
    new-instance v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v11, "FILLED_ROUNDED_RECTANGLE"

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v11, v10

    .line 8885
    new-instance v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v12, "GRADIENT_LINE"

    const/16 v14, 0xe

    invoke-direct {v10, v12, v13, v14}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v12, v11

    .line 8886
    new-instance v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const/16 v13, 0xb

    const/16 v14, 0xf

    const-string v15, "SCRIBBLE"

    invoke-direct {v11, v15, v13, v14}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move v13, v12

    .line 8887
    new-instance v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    const-string v14, "DATA_NOT_SET"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    .line 8874
    filled-new-array/range {v0 .. v12}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8889
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8890
    iput p3, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .registers 2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_31

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2e

    packed-switch p0, :pswitch_data_34

    const/4 p0, 0x0

    return-object p0

    .line 8911
    :pswitch_d
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8910
    :pswitch_10
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ROUNDED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8909
    :pswitch_13
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->TEXT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8908
    :pswitch_16
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->ARROW:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8907
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8906
    :pswitch_1c
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->POINT:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8905
    :pswitch_1f
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8904
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->OVAL:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8903
    :pswitch_25
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->FILLED_RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8902
    :pswitch_28
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->RECTANGLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8914
    :pswitch_2b
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->DATA_NOT_SET:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8913
    :cond_2e
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->SCRIBBLE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    .line 8912
    :cond_31
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->GRADIENT_LINE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8897
    invoke-static {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .registers 2

    .line 8874
    const-class v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .registers 1

    .line 8874
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    invoke-virtual {v0}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 8919
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->value:I

    return p0
.end method
