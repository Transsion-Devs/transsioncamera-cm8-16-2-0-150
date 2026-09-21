.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C_MattingResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final MASKDATA_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULTRECT_FIELD_NUMBER:I = 0x4

.field public static final WIDTH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:I

.field private maskData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41674
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    .line 41682
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$1;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$1;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 40807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 40989
    iput-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 40808
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I

    .line 40809
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    .line 40810
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10

    .line 40822
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;-><init>()V

    .line 40824
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40828
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    const/4 v3, 0x4

    if-nez v1, :cond_f1

    .line 40832
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_30

    const/16 v6, 0x8

    if-eq v4, v6, :cond_bf

    const/16 v6, 0x10

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x18

    if-eq v4, v6, :cond_96

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_63

    const/16 v6, 0x22

    if-eq v4, v6, :cond_3b

    .line 40838
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_30
    move v1, v5

    goto :goto_c

    :catchall_32
    move-exception p1

    goto/16 :goto_db

    :catch_35
    move-exception p1

    goto/16 :goto_cc

    :catch_38
    move-exception p1

    goto/16 :goto_d6

    .line 40877
    :cond_3b
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_47

    .line 40878
    iget-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    invoke-virtual {v4}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;

    move-result-object v4

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    .line 40880
    :goto_48
    sget-object v5, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    iput-object v5, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-eqz v4, :cond_5d

    .line 40882
    invoke-virtual {v4, v5}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;

    .line 40883
    invoke-virtual {v4}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    .line 40885
    :cond_5d
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    goto :goto_c

    .line 40863
    :cond_63
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 40864
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x4

    if-eq v5, v3, :cond_7d

    .line 40865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7d

    .line 40866
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    move v2, v3

    .line 40869
    :cond_7d
    :goto_7d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_91

    .line 40870
    iget-object v5, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 40872
    :cond_91
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_c

    :cond_96
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v3, :cond_a2

    .line 40856
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    move v2, v3

    .line 40859
    :cond_a2
    iget-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 40850
    :cond_b1
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    .line 40851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    goto/16 :goto_c

    .line 40845
    :cond_bf
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    .line 40846
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I
    :try_end_ca
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_ca} :catch_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_ca} :catch_35
    .catchall {:try_start_f .. :try_end_ca} :catchall_32

    goto/16 :goto_c

    .line 40893
    :goto_cc
    :try_start_cc
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 40894
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 40891
    :goto_d6
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_db
    .catchall {:try_start_cc .. :try_end_db} :catchall_32

    :goto_db
    and-int/lit8 p2, v2, 0x4

    if-ne p2, v3, :cond_e7

    .line 40897
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    .line 40899
    :cond_e7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40900
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_f1
    and-int/lit8 p1, v2, 0x4

    if-ne p1, v3, :cond_fd

    .line 40897
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    .line 40899
    :cond_fd
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40900
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 4

    .line 40798
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 40805
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 40989
    iput-byte p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 40798
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$47700()Z
    .registers 1

    .line 40798
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$47902(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;I)I
    .registers 2

    .line 40798
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I

    return p1
.end method

.method static synthetic access$48002(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;I)I
    .registers 2

    .line 40798
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    return p1
.end method

.method static synthetic access$48100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;)Ljava/util/List;
    .registers 1

    .line 40798
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$48102(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 40798
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$48202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
    .registers 2

    .line 40798
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    return-object p1
.end method

.method static synthetic access$48302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;I)I
    .registers 2

    .line 40798
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    return p1
.end method

.method static synthetic access$48400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 40798
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 1

    .line 41678
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 40905
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$47300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    .registers 1

    .line 41195
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    .registers 2

    .line 41198
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41169
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41170
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41176
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41177
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41137
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41143
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41182
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41183
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41189
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41190
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41157
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41158
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41164
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 41165
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41126
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41132
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 2

    .line 41147
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 3

    .line 41153
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;",
            ">;"
        }
    .end annotation

    .line 41692
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 41068
    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    if-nez v1, :cond_d

    .line 41069
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 41071
    :cond_d
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    .line 41074
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasWidth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasWidth()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    move v1, v0

    goto :goto_1d

    :cond_1c
    move v1, v3

    .line 41075
    :goto_1d
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasWidth()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v1, :cond_31

    .line 41076
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getWidth()I

    move-result v1

    .line 41077
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_31

    move v1, v0

    goto :goto_32

    :cond_31
    move v1, v3

    :cond_32
    :goto_32
    if-eqz v1, :cond_40

    .line 41079
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasHeight()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasHeight()Z

    move-result v2

    if-ne v1, v2, :cond_40

    move v1, v0

    goto :goto_41

    :cond_40
    move v1, v3

    .line 41080
    :goto_41
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasHeight()Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz v1, :cond_55

    .line 41081
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getHeight()I

    move-result v1

    .line 41082
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_55

    move v1, v0

    goto :goto_56

    :cond_55
    move v1, v3

    :cond_56
    :goto_56
    if-eqz v1, :cond_68

    .line 41084
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getMaskDataList()Ljava/util/List;

    move-result-object v1

    .line 41085
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getMaskDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    move v1, v0

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    if-eqz v1, :cond_77

    .line 41086
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasResultRect()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasResultRect()Z

    move-result v2

    if-ne v1, v2, :cond_77

    move v1, v0

    goto :goto_78

    :cond_77
    move v1, v3

    .line 41087
    :goto_78
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasResultRect()Z

    move-result v2

    if-eqz v2, :cond_91

    if-eqz v1, :cond_90

    .line 41088
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v1

    .line 41089
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    move v1, v0

    goto :goto_91

    :cond_90
    move v1, v3

    :cond_91
    :goto_91
    if-eqz v1, :cond_9e

    .line 41091
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9e

    return v0

    :cond_9e
    return v3
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;
    .registers 1

    .line 41701
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 40943
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    return p0
.end method

.method public getMaskData(I)I
    .registers 2

    .line 40965
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaskDataCount()I
    .registers 1

    .line 40959
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMaskDataList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40953
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;",
            ">;"
        }
    .end annotation

    .line 41697
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
    .registers 1

    .line 40980
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getResultRectOrBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;
    .registers 1

    .line 40986
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->resultRect_:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 41033
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 41037
    :cond_6
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    .line 41038
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I

    .line 41039
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    .line 41041
    :goto_15
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_22

    .line 41042
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    .line 41043
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    move v1, v2

    .line 41047
    :goto_23
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 41048
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    .line 41049
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_3f
    add-int/2addr v0, v1

    .line 41052
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getMaskDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 41054
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_58

    .line 41056
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41058
    :cond_58
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 41059
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 40816
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 40928
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I

    return p0
.end method

.method public hasHeight()Z
    .registers 2

    .line 40937
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasResultRect()Z
    .registers 2

    .line 40974
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasWidth()Z
    .registers 2

    .line 40922
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 41097
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 41101
    :cond_5
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 41102
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_21

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 41104
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 41106
    :cond_21
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_32

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 41108
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 41110
    :cond_32
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getMaskDataCount()I

    move-result v0

    if-lez v0, :cond_47

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 41112
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getMaskDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 41114
    :cond_47
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasResultRect()Z

    move-result v0

    if-eqz v0, :cond_5c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 41116
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5c
    mul-int/lit8 v1, v1, 0x1d

    .line 41118
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 41119
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 40910
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_MattingResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$47400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    .line 40911
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 4

    .line 40991
    iget-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 40995
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasWidth()Z

    move-result v0

    if-nez v0, :cond_13

    .line 40996
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return v2

    .line 40999
    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasHeight()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 41000
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return v2

    .line 41003
    :cond_1c
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->hasResultRect()Z

    move-result v0

    if-nez v0, :cond_25

    .line 41004
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return v2

    .line 41007
    :cond_25
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_32

    .line 41008
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return v2

    .line 41011
    :cond_32
    iput-byte v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    .registers 1

    .line 41193
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    .registers 3

    .line 41208
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 40798
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;
    .registers 3

    .line 41201
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    invoke-direct {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0

    :cond_b
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    invoke-direct {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 41202
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 40798
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5

    .line 41017
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 41018
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->width_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 41020
    :cond_b
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 41021
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->height_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_16
    const/4 v0, 0x0

    .line 41023
    :goto_17
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 41024
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->maskData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 41026
    :cond_32
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3f

    .line 41027
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_MattingResult;->getResultRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41029
    :cond_3f
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
