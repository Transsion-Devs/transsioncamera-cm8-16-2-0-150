.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBufferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C_SceneRecogBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

.field public static final M_CHOOSE_FIELD_NUMBER:I = 0x2

.field public static final M_SCENERECOGINFO_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private mChoose_:I

.field private mSceneRecogInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26351
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    .line 26359
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$1;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$1;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 25543
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 25679
    iput-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    .line 25544
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    const/4 v0, 0x0

    .line 25545
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9

    .line 25557
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;-><init>()V

    .line 25559
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25563
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    const/4 v3, 0x1

    if-nez v1, :cond_70

    .line 25567
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v5, 0xa

    if-eq v4, v5, :cond_37

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2b

    .line 25573
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_23
    move v1, v3

    goto :goto_c

    :catchall_25
    move-exception p1

    goto :goto_5c

    :catch_27
    move-exception p1

    goto :goto_4d

    :catch_29
    move-exception p1

    goto :goto_57

    .line 25589
    :cond_2b
    iget v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

    .line 25590
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    goto :goto_c

    :cond_37
    if-eq v2, v3, :cond_41

    .line 25581
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    move v2, v3

    .line 25584
    :cond_41
    iget-object v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    sget-object v5, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 25585
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 25584
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4c} :catch_29
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4c} :catch_27
    .catchall {:try_start_f .. :try_end_4c} :catchall_25

    goto :goto_c

    .line 25598
    :goto_4d
    :try_start_4d
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25599
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 25596
    :goto_57
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_25

    :goto_5c
    if-ne v2, v3, :cond_66

    .line 25602
    iget-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    .line 25604
    :cond_66
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 25605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_70
    if-ne v2, v3, :cond_7a

    .line 25602
    iget-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    .line 25604
    :cond_7a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 25605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 4

    .line 25534
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 25541
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 25679
    iput-byte p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 25534
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$29100()Z
    .registers 1

    .line 25534
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$29300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;)Ljava/util/List;
    .registers 1

    .line 25534
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$29302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 25534
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$29402(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;I)I
    .registers 2

    .line 25534
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    return p1
.end method

.method static synthetic access$29502(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;I)I
    .registers 2

    .line 25534
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

    return p1
.end method

.method static synthetic access$29600()Z
    .registers 1

    .line 25534
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$29700(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 25534
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 1

    .line 26355
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 25610
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$28700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    .registers 1

    .line 25842
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    .registers 2

    .line 25845
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25816
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25817
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25823
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25824
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25784
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25790
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25829
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25830
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25836
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25837
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25804
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25805
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25811
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 25812
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25773
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25779
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 2

    .line 25794
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 3

    .line 25800
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;",
            ">;"
        }
    .end annotation

    .line 26369
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 25733
    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    if-nez v1, :cond_d

    .line 25734
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 25736
    :cond_d
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    .line 25739
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfoList()Ljava/util/List;

    move-result-object v1

    .line 25740
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 25741
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->hasMChoose()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->hasMChoose()Z

    move-result v3

    if-ne v1, v3, :cond_2a

    move v1, v0

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 25742
    :goto_2b
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->hasMChoose()Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v1, :cond_3f

    .line 25743
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMChoose()I

    move-result v1

    .line 25744
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMChoose()I

    move-result v3

    if-ne v1, v3, :cond_3f

    move v1, v0

    goto :goto_40

    :cond_3f
    move v1, v2

    :cond_40
    :goto_40
    if-eqz v1, :cond_4d

    .line 25746
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return v0

    :cond_4d
    return v2
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;
    .registers 1

    .line 26378
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getMChoose()I
    .registers 1

    .line 25676
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    return p0
.end method

.method public getMSceneRecogInfo(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;
    .registers 2

    .line 25646
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;

    return-object p0
.end method

.method public getMSceneRecogInfoCount()I
    .registers 1

    .line 25640
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMSceneRecogInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;",
            ">;"
        }
    .end annotation

    .line 25627
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    return-object p0
.end method

.method public getMSceneRecogInfoOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfoOrBuilder;
    .registers 2

    .line 25653
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfoOrBuilder;

    return-object p0
.end method

.method public getMSceneRecogInfoOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25634
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;",
            ">;"
        }
    .end annotation

    .line 26374
    sget-object p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 25711
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 25715
    :goto_8
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_21

    .line 25716
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    .line 25717
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 25719
    :cond_21
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2e

    const/4 v0, 0x2

    .line 25720
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    .line 25721
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 25723
    :cond_2e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 25724
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    .line 25551
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasMChoose()Z
    .registers 2

    .line 25666
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

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

    .line 25752
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 25756
    :cond_5
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 25757
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfoCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 25759
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 25761
    :cond_25
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->hasMChoose()Z

    move-result v0

    if-eqz v0, :cond_36

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 25763
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMChoose()I

    move-result v0

    add-int/2addr v1, v0

    :cond_36
    mul-int/lit8 v1, v1, 0x1d

    .line 25765
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 25766
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 25615
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_SceneRecogBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$28800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    .line 25616
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 5

    .line 25681
    iget-byte v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 25685
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->hasMChoose()Z

    move-result v0

    if-nez v0, :cond_13

    .line 25686
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    return v2

    :cond_13
    move v0, v2

    .line 25689
    :goto_14
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfoCount()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 25690
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->getMSceneRecogInfo(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_27

    .line 25691
    iput-byte v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    return v2

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 25695
    :cond_2a
    iput-byte v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    .registers 1

    .line 25840
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->newBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    .registers 3

    .line 25855
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 25534
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->newBuilderForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;
    .registers 3

    .line 25848
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->DEFAULT_INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    invoke-direct {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    return-object p0

    :cond_b
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    invoke-direct {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 25849
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 25534
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->toBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5

    const/4 v0, 0x0

    .line 25701
    :goto_1
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_18

    .line 25702
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mSceneRecogInfo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25704
    :cond_18
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_23

    const/4 v0, 0x2

    .line 25705
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SceneRecogBuffer;->mChoose_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25707
    :cond_23
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
