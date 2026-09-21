.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;",
        ">;",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106OrBuilder;"
    }
.end annotation


# instance fields
.field private action_:I

.field private bitField0_:I

.field private eyeDist_:F

.field private iD_:I

.field private pitch_:F

.field private pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pointsArray_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

.field private roll_:F

.field private score_:F

.field private trackingCnt_:I

.field private visibilityArray_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private yaw_:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4468
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4762
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4965
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 5276
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 4469
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 2

    .line 4451
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 4474
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 4762
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4965
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 5276
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 4475
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 4451
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensurePointsArrayIsMutable()V
    .registers 4

    .line 4967
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 4968
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 4969
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private ensureVisibilityArrayIsMutable()V
    .registers 4

    .line 5278
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    .line 5279
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 5280
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4457
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$5600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 5264
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 5265
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 5269
    :goto_11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 5270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5271
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 5273
    :cond_21
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method private getRectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4905
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4906
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4908
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v1

    .line 4909
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4911
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4913
    :cond_1a
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 4479
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6000()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4480
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getRectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4481
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllPointsArray(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;"
        }
    .end annotation

    .line 5143
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 5144
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5145
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5147
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5149
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllVisibilityArray(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;"
        }
    .end annotation

    .line 5350
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensureVisibilityArrayIsMutable()V

    .line 5351
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addPointsArray(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 5125
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 5126
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5127
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5130
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPointsArray(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 5086
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 5088
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5090
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5091
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5092
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5094
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPointsArray(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5107
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 5108
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5109
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5110
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5112
    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPointsArray(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5065
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 5067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5069
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5070
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5073
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addPointsArrayBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;
    .registers 2

    .line 5235
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 5236
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v0

    .line 5235
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;

    return-object p0
.end method

.method public addPointsArrayBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;
    .registers 3

    .line 5247
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 5248
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v0

    .line 5247
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4623
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addVisibilityArray(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5336
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensureVisibilityArrayIsMutable()V

    .line 5337
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5338
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
    .registers 2

    .line 4529
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    .line 4530
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 4531
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
    .registers 6

    .line 4537
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 4538
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 4543
    :goto_f
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_19

    .line 4544
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    goto :goto_22

    .line 4546
    :cond_19
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    :goto_22
    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    or-int/lit8 v3, v3, 0x2

    .line 4551
    :cond_29
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->score_:F

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->score_:F
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;F)F

    .line 4552
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_4c

    .line 4553
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_46

    .line 4554
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 4555
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4557
    :cond_46
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6402(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;Ljava/util/List;)Ljava/util/List;

    goto :goto_53

    .line 4559
    :cond_4c
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6402(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;Ljava/util/List;)Ljava/util/List;

    .line 4561
    :goto_53
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_68

    .line 4562
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 4563
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4565
    :cond_68
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->visibilityArray_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6502(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_75

    or-int/lit8 v3, v3, 0x4

    .line 4569
    :cond_75
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->yaw_:F

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->yaw_:F
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6602(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;F)F

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_82

    or-int/lit8 v3, v3, 0x8

    .line 4573
    :cond_82
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pitch_:F

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pitch_:F
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6702(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;F)F

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_8f

    or-int/lit8 v3, v3, 0x10

    .line 4577
    :cond_8f
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->roll_:F

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->roll_:F
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6802(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;F)F

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9c

    or-int/lit8 v3, v3, 0x20

    .line 4581
    :cond_9c
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->eyeDist_:F

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->eyeDist_:F
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6902(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;F)F

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_a9

    or-int/lit8 v3, v3, 0x40

    .line 4585
    :cond_a9
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->iD_:I

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->iD_:I
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7002(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_b6

    or-int/lit16 v3, v3, 0x80

    .line 4589
    :cond_b6
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->action_:I

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->action_:I
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7102(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;I)I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c2

    or-int/lit16 v3, v3, 0x100

    .line 4593
    :cond_c2
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->trackingCnt_:I

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->trackingCnt_:I
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;I)I

    .line 4594
    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->bitField0_:I
    invoke-static {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;I)I

    .line 4595
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 4485
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 4486
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 4487
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    goto :goto_e

    .line 4489
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4491
    :goto_e
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 4492
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->score_:F

    and-int/lit8 v2, v0, -0x4

    .line 4493
    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4494
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_24

    .line 4495
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    and-int/lit8 v0, v0, -0x8

    .line 4496
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    goto :goto_27

    .line 4498
    :cond_24
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 4500
    :goto_27
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 4501
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4502
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->yaw_:F

    .line 4504
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pitch_:F

    .line 4506
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->roll_:F

    .line 4508
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->eyeDist_:F

    const/4 v1, 0x0

    .line 4510
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->iD_:I

    .line 4512
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->action_:I

    .line 4514
    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->trackingCnt_:I

    and-int/lit16 v0, v0, -0x7f9

    .line 4515
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearAction()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5652
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5653
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->action_:I

    .line 5654
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEyeDist()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5556
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5557
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->eyeDist_:F

    .line 5558
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 4609
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearID()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5604
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5605
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->iD_:I

    .line 5606
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 4613
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearPitch()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5460
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5461
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pitch_:F

    .line 5462
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPointsArray()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5161
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 5162
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 5163
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5166
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 4859
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 4860
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_e

    .line 4863
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4865
    :goto_e
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRoll()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5508
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5509
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->roll_:F

    .line 5510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearScore()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 4958
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4959
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->score_:F

    .line 4960
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTrackingCnt()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5700
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5701
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->trackingCnt_:I

    .line 5702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVisibilityArray()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5364
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 5365
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearYaw()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5412
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5413
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->yaw_:F

    .line 5414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 1

    .line 4600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAction()I
    .registers 1

    .line 5629
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->action_:I

    return p0
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
    .registers 1

    .line 4525
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4451
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4521
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$5600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getEyeDist()F
    .registers 1

    .line 5533
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->eyeDist_:F

    return p0
.end method

.method public getID()I
    .registers 1

    .line 5581
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->iD_:I

    return p0
.end method

.method public getPitch()F
    .registers 1

    .line 5437
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pitch_:F

    return p0
.end method

.method public getPointsArray(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 3

    .line 5012
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5013
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0

    .line 5015
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getPointsArrayBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;
    .registers 2

    .line 5196
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;

    return-object p0
.end method

.method public getPointsArrayBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;",
            ">;"
        }
    .end annotation

    .line 5259
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPointsArrayCount()I
    .registers 2

    .line 4998
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4999
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 5001
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result p0

    return p0
.end method

.method public getPointsArrayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 4984
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 4985
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4987
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPointsArrayOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 3

    .line 5207
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5208
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0

    .line 5209
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getPointsArrayOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 5221
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 5222
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5224
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
    .registers 2

    .line 4783
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4784
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-nez p0, :cond_c

    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p0

    :cond_c
    return-object p0

    .line 4786
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    return-object p0
.end method

.method public getRectBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;
    .registers 2

    .line 4876
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4878
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getRectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;

    return-object p0
.end method

.method public getRectOrBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;
    .registers 2

    .line 4888
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4889
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;

    return-object p0

    .line 4891
    :cond_b
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-nez p0, :cond_13

    .line 4892
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public getRoll()F
    .registers 1

    .line 5485
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->roll_:F

    return p0
.end method

.method public getScore()F
    .registers 1

    .line 4935
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->score_:F

    return p0
.end method

.method public getTrackingCnt()I
    .registers 1

    .line 5677
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->trackingCnt_:I

    return p0
.end method

.method public getVisibilityArray(I)F
    .registers 2

    .line 5312
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getVisibilityArrayCount()I
    .registers 1

    .line 5302
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getVisibilityArrayList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 5292
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getYaw()F
    .registers 1

    .line 5389
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->yaw_:F

    return p0
.end method

.method public hasAction()Z
    .registers 2

    .line 5619
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasEyeDist()Z
    .registers 2

    .line 5523
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasID()Z
    .registers 2

    .line 5571
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasPitch()Z
    .registers 2

    .line 5427
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasRect()Z
    .registers 2

    .line 4773
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasRoll()Z
    .registers 2

    .line 5475
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasScore()Z
    .registers 2

    .line 4925
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasTrackingCnt()Z
    .registers 2

    .line 5667
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasYaw()Z
    .registers 2

    .line 5379
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 4462
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_Face106_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$5700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4463
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 4

    .line 4705
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasRect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4708
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasScore()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 4711
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasYaw()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 4714
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasPitch()Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 4717
    :cond_1d
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasRoll()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 4720
    :cond_24
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasEyeDist()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    .line 4723
    :cond_2b
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasID()Z

    move-result v0

    if-nez v0, :cond_32

    return v1

    .line 4726
    :cond_32
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasAction()Z

    move-result v0

    if-nez v0, :cond_39

    return v1

    .line 4729
    :cond_39
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->hasTrackingCnt()Z

    move-result v0

    if-nez v0, :cond_40

    return v1

    .line 4732
    :cond_40
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4b

    return v1

    :cond_4b
    move v0, v1

    .line 4735
    :goto_4c
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayCount()I

    move-result v2

    if-ge v0, v2, :cond_60

    .line 4736
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArray(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5d

    return v1

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_60
    const/4 p0, 0x1

    return p0
.end method

.method public mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 4635
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4636
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasRect()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4637
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeRect(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4639
    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasScore()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4640
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getScore()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setScore(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4642
    :cond_21
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_54

    .line 4643
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 4644
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4645
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 4646
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    goto :goto_50

    .line 4648
    :cond_44
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 4649
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4651
    :goto_50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_90

    .line 4654
    :cond_54
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 4655
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 4656
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 4657
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 4658
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    .line 4659
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4661
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7400()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 4662
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->getPointsArrayFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_84
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_90

    .line 4664
    :cond_87
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->pointsArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 4668
    :cond_90
    :goto_90
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->visibilityArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6500(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_be

    .line 4669
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 4670
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->visibilityArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6500(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    .line 4671
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    goto :goto_bb

    .line 4673
    :cond_af
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensureVisibilityArrayIsMutable()V

    .line 4674
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->visibilityArray_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$6500(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4676
    :goto_bb
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4678
    :cond_be
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasYaw()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 4679
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getYaw()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setYaw(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4681
    :cond_cb
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasPitch()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4682
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getPitch()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setPitch(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4684
    :cond_d8
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasRoll()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 4685
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getRoll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setRoll(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4687
    :cond_e5
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasEyeDist()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 4688
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getEyeDist()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setEyeDist(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4690
    :cond_f2
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasID()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 4691
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setID(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4693
    :cond_ff
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 4694
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setAction(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4696
    :cond_10c
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->hasTrackingCnt()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 4697
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->getTrackingCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setTrackingCnt(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4699
    :cond_119
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->access$7500(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    .line 4700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 4749
    :try_start_1
    sget-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 4755
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    :cond_e
    return-object p0

    :catchall_f
    move-exception p1

    goto :goto_1f

    :catch_11
    move-exception p1

    .line 4751
    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 4752
    :try_start_18
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    move-object v0, p2

    :goto_1f
    if-eqz v0, :cond_24

    .line 4755
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    :cond_24
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4626
    instance-of v0, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    if-eqz v0, :cond_b

    .line 4627
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0

    .line 4629
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeRect(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 5

    .line 4835
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    .line 4836
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-eqz v0, :cond_25

    .line 4838
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 4839
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4840
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->newBuilder(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    goto :goto_27

    .line 4842
    :cond_25
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4844
    :goto_27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2e

    .line 4846
    :cond_2b
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4848
    :goto_2e
    iget p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5712
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public removePointsArray(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5178
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 5179
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5180
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5183
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setAction(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5639
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5640
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->action_:I

    .line 5641
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEyeDist(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5543
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5544
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->eyeDist_:F

    .line 5545
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4605
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 4451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setID(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5591
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5592
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->iD_:I

    .line 5593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPitch(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5447
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5448
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pitch_:F

    .line 5449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPointsArray(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 5048
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 5049
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5050
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5053
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setPointsArray(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 5027
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArrayBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 5029
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5031
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensurePointsArrayIsMutable()V

    .line 5032
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->pointsArray_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5033
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5035
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setRect(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4818
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4819
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4820
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 4822
    :cond_e
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4824
    :goto_15
    iget p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRect(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4797
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rectBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4801
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->rect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 4802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 4804
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4806
    :goto_10
    iget p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 4618
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 4451
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 4451
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRoll(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5495
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5496
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->roll_:F

    .line 5497
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setScore(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 4945
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 4946
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->score_:F

    .line 4947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTrackingCnt(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5687
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5688
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->trackingCnt_:I

    .line 5689
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 2

    .line 5707
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4451
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setVisibilityArray(IF)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 4

    .line 5323
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->ensureVisibilityArrayIsMutable()V

    .line 5324
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->visibilityArray_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setYaw(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;
    .registers 3

    .line 5399
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->bitField0_:I

    .line 5400
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106$Builder;->yaw_:F

    .line 5401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
