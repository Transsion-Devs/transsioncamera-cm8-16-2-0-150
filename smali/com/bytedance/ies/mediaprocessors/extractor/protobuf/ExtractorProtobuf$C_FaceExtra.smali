.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C_FaceExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

.field public static final EYEBROW_COUNT_FIELD_NUMBER:I = 0x2

.field public static final EYEBROW_LEFT_FIELD_NUMBER:I = 0x7

.field public static final EYEBROW_RIGHT_FIELD_NUMBER:I = 0x8

.field public static final EYE_COUNT_FIELD_NUMBER:I = 0x1

.field public static final EYE_LEFT_FIELD_NUMBER:I = 0x5

.field public static final EYE_RIGHT_FIELD_NUMBER:I = 0x6

.field public static final IRIS_COUNT_FIELD_NUMBER:I = 0x4

.field public static final LEFT_IRIS_FIELD_NUMBER:I = 0xa

.field public static final LIPS_COUNT_FIELD_NUMBER:I = 0x3

.field public static final LIPS_FIELD_NUMBER:I = 0x9

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RIGHT_IRIS_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eyeCount_:I

.field private eyeLeft_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private eyeRight_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private eyebrowCount_:I

.field private eyebrowLeft_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private eyebrowRight_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private irisCount_:I

.field private leftIris_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private lips9_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field

.field private lipsCount3_:I

.field private memoizedIsInitialized:B

.field private rightIris_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15087
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    .line 15095
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$1;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$1;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 11176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 11831
    iput-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 11177
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I

    .line 11178
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    .line 11179
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    .line 11180
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    .line 11181
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    .line 11182
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    .line 11183
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    .line 11184
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    .line 11185
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    .line 11186
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    .line 11187
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 15

    .line 11199
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;-><init>()V

    .line 11201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11205
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    const/16 v3, 0x10

    const/16 v4, 0x20

    const/16 v5, 0x40

    const/16 v6, 0x80

    const/16 v7, 0x100

    const/16 v8, 0x200

    const/16 v9, 0x400

    if-nez v1, :cond_18c

    .line 11209
    :try_start_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v10

    const/4 v11, 0x1

    sparse-switch v10, :sswitch_data_1ea

    .line 11215
    invoke-virtual {p0, p1, v0, p2, v10}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_2a
    move v1, v11

    goto :goto_c

    :catchall_2c
    move-exception p1

    goto/16 :goto_12e

    :catch_2f
    move-exception p1

    goto/16 :goto_11f

    :catch_32
    move-exception p1

    goto/16 :goto_129

    :sswitch_35
    and-int/lit16 v10, v2, 0x400

    if-eq v10, v9, :cond_42

    .line 11297
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x400

    .line 11300
    :cond_42
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11301
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11300
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :sswitch_4e
    and-int/lit16 v10, v2, 0x200

    if-eq v10, v8, :cond_5b

    .line 11288
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x200

    .line 11291
    :cond_5b
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11292
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11291
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :sswitch_67
    and-int/lit16 v10, v2, 0x100

    if-eq v10, v7, :cond_74

    .line 11279
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 11282
    :cond_74
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11283
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11282
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :sswitch_80
    and-int/lit16 v10, v2, 0x80

    if-eq v10, v6, :cond_8d

    .line 11270
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    .line 11273
    :cond_8d
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11274
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11273
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :sswitch_9a
    and-int/lit8 v10, v2, 0x40

    if-eq v10, v5, :cond_a7

    .line 11261
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 11264
    :cond_a7
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11265
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11264
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :sswitch_b4
    and-int/lit8 v10, v2, 0x20

    if-eq v10, v4, :cond_c1

    .line 11252
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 11255
    :cond_c1
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11256
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11255
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :sswitch_ce
    and-int/lit8 v10, v2, 0x10

    if-eq v10, v3, :cond_db

    .line 11243
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 11246
    :cond_db
    iget-object v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    sget-object v11, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->PARSER:Lcom/google/protobuf/Parser;

    .line 11247
    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 11246
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 11237
    :sswitch_e8
    iget v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    .line 11238
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    goto/16 :goto_c

    .line 11232
    :sswitch_f6
    iget v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    .line 11233
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    goto/16 :goto_c

    .line 11227
    :sswitch_104
    iget v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    .line 11228
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    goto/16 :goto_c

    .line 11222
    :sswitch_112
    iget v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    or-int/2addr v10, v11

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    .line 11223
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I
    :try_end_11d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1c .. :try_end_11d} :catch_32
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_11d} :catch_2f
    .catchall {:try_start_1c .. :try_end_11d} :catchall_2c

    goto/16 :goto_c

    .line 11309
    :goto_11f
    :try_start_11f
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11310
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 11307
    :goto_129
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_12e
    .catchall {:try_start_11f .. :try_end_12e} :catchall_2c

    :goto_12e
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v3, :cond_13a

    .line 11313
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    :cond_13a
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v4, :cond_146

    .line 11316
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    :cond_146
    and-int/lit8 p2, v2, 0x40

    if-ne p2, v5, :cond_152

    .line 11319
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    :cond_152
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v6, :cond_15e

    .line 11322
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    :cond_15e
    and-int/lit16 p2, v2, 0x100

    if-ne p2, v7, :cond_16a

    .line 11325
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    :cond_16a
    and-int/lit16 p2, v2, 0x200

    if-ne p2, v8, :cond_176

    .line 11328
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    :cond_176
    and-int/lit16 p2, v2, 0x400

    if-ne p2, v9, :cond_182

    .line 11331
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    .line 11333
    :cond_182
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_18c
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_198

    .line 11313
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    :cond_198
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v4, :cond_1a4

    .line 11316
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    :cond_1a4
    and-int/lit8 p1, v2, 0x40

    if-ne p1, v5, :cond_1b0

    .line 11319
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    :cond_1b0
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v6, :cond_1bc

    .line 11322
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    :cond_1bc
    and-int/lit16 p1, v2, 0x100

    if-ne p1, v7, :cond_1c8

    .line 11325
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    :cond_1c8
    and-int/lit16 p1, v2, 0x200

    if-ne p1, v8, :cond_1d4

    .line 11328
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    :cond_1d4
    and-int/lit16 p1, v2, 0x400

    if-ne p1, v9, :cond_1e0

    .line 11331
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    .line 11333
    :cond_1e0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_1ea
    .sparse-switch
        0x0 -> :sswitch_2a
        0x8 -> :sswitch_112
        0x10 -> :sswitch_104
        0x18 -> :sswitch_f6
        0x20 -> :sswitch_e8
        0x2a -> :sswitch_ce
        0x32 -> :sswitch_b4
        0x3a -> :sswitch_9a
        0x42 -> :sswitch_80
        0x4a -> :sswitch_67
        0x52 -> :sswitch_4e
        0x5a -> :sswitch_35
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 4

    .line 11167
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 11174
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 11831
    iput-byte p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 11167
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14000()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;I)I
    .registers 2

    .line 11167
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;I)I
    .registers 2

    .line 11167
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;I)I
    .registers 2

    .line 11167
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    return p1
.end method

.method static synthetic access$14502(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;I)I
    .registers 2

    .line 11167
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    return p1
.end method

.method static synthetic access$14600(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14602(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14702(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14800(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14802(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14902(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15000(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$15002(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$15102(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15200(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Ljava/util/List;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$15202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 11167
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;I)I
    .registers 2

    .line 11167
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    return p1
.end method

.method static synthetic access$15400()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15500()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15600()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15700()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15800()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15900()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16000()Z
    .registers 1

    .line 11167
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 11167
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 1

    .line 15091
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 11339
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$13600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    .registers 1

    .line 12168
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    .registers 2

    .line 12171
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12142
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12143
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12149
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12150
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12110
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12116
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12155
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12156
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12162
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12163
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12130
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12131
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12137
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 12138
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12099
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12105
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 2

    .line 12120
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 3

    .line 12126
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;",
            ">;"
        }
    .end annotation

    .line 15105
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 11996
    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    if-nez v1, :cond_d

    .line 11997
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 11999
    :cond_d
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    .line 12002
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyeCount()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyeCount()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    move v1, v0

    goto :goto_1d

    :cond_1c
    move v1, v3

    .line 12003
    :goto_1d
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyeCount()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v1, :cond_31

    .line 12004
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeCount()I

    move-result v1

    .line 12005
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeCount()I

    move-result v2

    if-ne v1, v2, :cond_31

    move v1, v0

    goto :goto_32

    :cond_31
    move v1, v3

    :cond_32
    :goto_32
    if-eqz v1, :cond_40

    .line 12007
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyebrowCount()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyebrowCount()Z

    move-result v2

    if-ne v1, v2, :cond_40

    move v1, v0

    goto :goto_41

    :cond_40
    move v1, v3

    .line 12008
    :goto_41
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyebrowCount()Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz v1, :cond_55

    .line 12009
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowCount()I

    move-result v1

    .line 12010
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowCount()I

    move-result v2

    if-ne v1, v2, :cond_55

    move v1, v0

    goto :goto_56

    :cond_55
    move v1, v3

    :cond_56
    :goto_56
    if-eqz v1, :cond_64

    .line 12012
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasLipsCount3()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasLipsCount3()Z

    move-result v2

    if-ne v1, v2, :cond_64

    move v1, v0

    goto :goto_65

    :cond_64
    move v1, v3

    .line 12013
    :goto_65
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasLipsCount3()Z

    move-result v2

    if-eqz v2, :cond_7a

    if-eqz v1, :cond_79

    .line 12014
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLipsCount3()I

    move-result v1

    .line 12015
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLipsCount3()I

    move-result v2

    if-ne v1, v2, :cond_79

    move v1, v0

    goto :goto_7a

    :cond_79
    move v1, v3

    :cond_7a
    :goto_7a
    if-eqz v1, :cond_88

    .line 12017
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasIrisCount()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasIrisCount()Z

    move-result v2

    if-ne v1, v2, :cond_88

    move v1, v0

    goto :goto_89

    :cond_88
    move v1, v3

    .line 12018
    :goto_89
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasIrisCount()Z

    move-result v2

    if-eqz v2, :cond_9e

    if-eqz v1, :cond_9d

    .line 12019
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getIrisCount()I

    move-result v1

    .line 12020
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getIrisCount()I

    move-result v2

    if-ne v1, v2, :cond_9d

    move v1, v0

    goto :goto_9e

    :cond_9d
    move v1, v3

    :cond_9e
    :goto_9e
    if-eqz v1, :cond_b0

    .line 12022
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeftList()Ljava/util/List;

    move-result-object v1

    .line 12023
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeftList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    move v1, v0

    goto :goto_b1

    :cond_b0
    move v1, v3

    :goto_b1
    if-eqz v1, :cond_c3

    .line 12024
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRightList()Ljava/util/List;

    move-result-object v1

    .line 12025
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRightList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    move v1, v0

    goto :goto_c4

    :cond_c3
    move v1, v3

    :goto_c4
    if-eqz v1, :cond_d6

    .line 12026
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeftList()Ljava/util/List;

    move-result-object v1

    .line 12027
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeftList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    move v1, v0

    goto :goto_d7

    :cond_d6
    move v1, v3

    :goto_d7
    if-eqz v1, :cond_e9

    .line 12028
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRightList()Ljava/util/List;

    move-result-object v1

    .line 12029
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRightList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    move v1, v0

    goto :goto_ea

    :cond_e9
    move v1, v3

    :goto_ea
    if-eqz v1, :cond_fc

    .line 12030
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9List()Ljava/util/List;

    move-result-object v1

    .line 12031
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9List()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    move v1, v0

    goto :goto_fd

    :cond_fc
    move v1, v3

    :goto_fd
    if-eqz v1, :cond_10f

    .line 12032
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIrisList()Ljava/util/List;

    move-result-object v1

    .line 12033
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIrisList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    move v1, v0

    goto :goto_110

    :cond_10f
    move v1, v3

    :goto_110
    if-eqz v1, :cond_122

    .line 12034
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIrisList()Ljava/util/List;

    move-result-object v1

    .line 12035
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIrisList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    move v1, v0

    goto :goto_123

    :cond_122
    move v1, v3

    :goto_123
    if-eqz v1, :cond_130

    .line 12036
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_130

    return v0

    :cond_130
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;
    .registers 1

    .line 15114
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    move-result-object p0

    return-object p0
.end method

.method public getEyeCount()I
    .registers 1

    .line 11370
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I

    return p0
.end method

.method public getEyeLeft(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11485
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getEyeLeftCount()I
    .registers 1

    .line 11475
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEyeLeftList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11454
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    return-object p0
.end method

.method public getEyeLeftOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11496
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getEyeLeftOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11465
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    return-object p0
.end method

.method public getEyeRight(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11540
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getEyeRightCount()I
    .registers 1

    .line 11530
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEyeRightList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11509
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    return-object p0
.end method

.method public getEyeRightOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11551
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getEyeRightOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11520
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    return-object p0
.end method

.method public getEyebrowCount()I
    .registers 1

    .line 11393
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    return p0
.end method

.method public getEyebrowLeft(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11595
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getEyebrowLeftCount()I
    .registers 1

    .line 11585
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEyebrowLeftList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11564
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    return-object p0
.end method

.method public getEyebrowLeftOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11606
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getEyebrowLeftOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11575
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    return-object p0
.end method

.method public getEyebrowRight(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11650
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getEyebrowRightCount()I
    .registers 1

    .line 11640
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEyebrowRightList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11619
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    return-object p0
.end method

.method public getEyebrowRightOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11661
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getEyebrowRightOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11630
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    return-object p0
.end method

.method public getIrisCount()I
    .registers 1

    .line 11441
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    return p0
.end method

.method public getLeftIris(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11762
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getLeftIrisCount()I
    .registers 1

    .line 11752
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLeftIrisList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11731
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    return-object p0
.end method

.method public getLeftIrisOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11773
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getLeftIrisOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11742
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    return-object p0
.end method

.method public getLips9(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11707
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getLips9Count()I
    .registers 1

    .line 11697
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLips9List()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11676
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    return-object p0
.end method

.method public getLips9OrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11718
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getLips9OrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11687
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    return-object p0
.end method

.method public getLipsCount3()I
    .registers 1

    .line 11418
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;",
            ">;"
        }
    .end annotation

    .line 15110
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getRightIris(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
    .registers 2

    .line 11817
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    return-object p0
.end method

.method public getRightIrisCount()I
    .registers 1

    .line 11807
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRightIrisList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation

    .line 11786
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    return-object p0
.end method

.method public getRightIrisOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
    .registers 2

    .line 11828
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;

    return-object p0
.end method

.method public getRightIrisOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation

    .line 11797
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 11938
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 11942
    :cond_6
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    .line 11943
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I

    .line 11944
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    .line 11946
    :goto_15
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_22

    .line 11947
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    .line 11948
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11950
    :cond_22
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_30

    const/4 v1, 0x3

    .line 11951
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    .line 11952
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11954
    :cond_30
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3e

    .line 11955
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    .line 11956
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    move v1, v2

    .line 11958
    :goto_3f
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    .line 11959
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    .line 11960
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_58
    move v1, v2

    .line 11962
    :goto_59
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_72

    .line 11963
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    .line 11964
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_72
    move v1, v2

    .line 11966
    :goto_73
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8c

    .line 11967
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    .line 11968
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_8c
    move v1, v2

    .line 11970
    :goto_8d
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a5

    .line 11971
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    .line 11972
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_a5
    move v1, v2

    .line 11974
    :goto_a6
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c0

    .line 11975
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    .line 11976
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    :cond_c0
    move v1, v2

    .line 11978
    :goto_c1
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_db

    .line 11979
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    .line 11980
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 11982
    :cond_db
    :goto_db
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f5

    .line 11983
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    .line 11984
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xb

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 11986
    :cond_f5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11987
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 11193
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasEyeCount()Z
    .registers 2

    .line 11360
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasEyebrowCount()Z
    .registers 2

    .line 11383
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasIrisCount()Z
    .registers 2

    .line 11431
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasLipsCount3()Z
    .registers 2

    .line 11408
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 12042
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 12046
    :cond_5
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 12047
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyeCount()Z

    move-result v0

    if-eqz v0, :cond_21

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 12049
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 12051
    :cond_21
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyebrowCount()Z

    move-result v0

    if-eqz v0, :cond_32

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 12053
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 12055
    :cond_32
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasLipsCount3()Z

    move-result v0

    if-eqz v0, :cond_43

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 12057
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLipsCount3()I

    move-result v0

    add-int/2addr v1, v0

    .line 12059
    :cond_43
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasIrisCount()Z

    move-result v0

    if-eqz v0, :cond_54

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 12061
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getIrisCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 12063
    :cond_54
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeftCount()I

    move-result v0

    if-lez v0, :cond_69

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 12065
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeftList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12067
    :cond_69
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRightCount()I

    move-result v0

    if-lez v0, :cond_7e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 12069
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRightList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12071
    :cond_7e
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeftCount()I

    move-result v0

    if-lez v0, :cond_93

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 12073
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeftList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12075
    :cond_93
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRightCount()I

    move-result v0

    if-lez v0, :cond_a8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 12077
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRightList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12079
    :cond_a8
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9Count()I

    move-result v0

    if-lez v0, :cond_bd

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 12081
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9List()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12083
    :cond_bd
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIrisCount()I

    move-result v0

    if-lez v0, :cond_d2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 12085
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIrisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12087
    :cond_d2
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIrisCount()I

    move-result v0

    if-lez v0, :cond_e7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 12089
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIrisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_e7
    mul-int/lit8 v1, v1, 0x1d

    .line 12091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12092
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 11344
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$13700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    .line 11345
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 5

    .line 11833
    iget-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 11837
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyeCount()Z

    move-result v0

    if-nez v0, :cond_13

    .line 11838
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    .line 11841
    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasEyebrowCount()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 11842
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    .line 11845
    :cond_1c
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasLipsCount3()Z

    move-result v0

    if-nez v0, :cond_25

    .line 11846
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    .line 11849
    :cond_25
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->hasIrisCount()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 11850
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_2e
    move v0, v2

    .line 11853
    :goto_2f
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeftCount()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 11854
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeLeft(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_42

    .line 11855
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_45
    move v0, v2

    .line 11859
    :goto_46
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRightCount()I

    move-result v3

    if-ge v0, v3, :cond_5c

    .line 11860
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyeRight(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_59

    .line 11861
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_5c
    move v0, v2

    .line 11865
    :goto_5d
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeftCount()I

    move-result v3

    if-ge v0, v3, :cond_73

    .line 11866
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowLeft(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_70

    .line 11867
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_73
    move v0, v2

    .line 11871
    :goto_74
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRightCount()I

    move-result v3

    if-ge v0, v3, :cond_8a

    .line 11872
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getEyebrowRight(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_87

    .line 11873
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_8a
    move v0, v2

    .line 11877
    :goto_8b
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9Count()I

    move-result v3

    if-ge v0, v3, :cond_a1

    .line 11878
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLips9(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 11879
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_a1
    move v0, v2

    .line 11883
    :goto_a2
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIrisCount()I

    move-result v3

    if-ge v0, v3, :cond_b8

    .line 11884
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getLeftIris(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 11885
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_b8
    move v0, v2

    .line 11889
    :goto_b9
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIrisCount()I

    move-result v3

    if-ge v0, v3, :cond_cf

    .line 11890
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->getRightIris(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_cc

    .line 11891
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v2

    :cond_cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 11895
    :cond_cf
    iput-byte v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    .registers 1

    .line 12166
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    .registers 3

    .line 12181
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 11167
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;
    .registers 3

    .line 12174
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    invoke-direct {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0

    :cond_b
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    invoke-direct {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 12175
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 11167
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7

    .line 11901
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 11902
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11904
    :cond_b
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 11905
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11907
    :cond_16
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x3

    .line 11908
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lipsCount3_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11910
    :cond_22
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 11911
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->irisCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    .line 11913
    :goto_30
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 11914
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeLeft_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_47
    move v1, v0

    .line 11916
    :goto_48
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5f

    .line 11917
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyeRight_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_5f
    move v1, v0

    .line 11919
    :goto_60
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 11920
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowLeft_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_77
    move v1, v0

    .line 11922
    :goto_78
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8e

    .line 11923
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->eyebrowRight_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_8e
    move v1, v0

    .line 11925
    :goto_8f
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 11926
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->lips9_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_a7
    move v1, v0

    .line 11928
    :goto_a8
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c0

    .line 11929
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->leftIris_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 11931
    :cond_c0
    :goto_c0
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d8

    .line 11932
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceExtra;->rightIris_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 11934
    :cond_d8
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
