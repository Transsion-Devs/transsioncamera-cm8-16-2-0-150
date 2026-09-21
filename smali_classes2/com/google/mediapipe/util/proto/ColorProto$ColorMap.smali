.class public final Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/ColorProto$ColorMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/ColorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;,
        Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$LabelToColorDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMapOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

.field public static final LABEL_TO_COLOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private labelToColor_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 840
    new-instance v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;-><init>()V

    .line 843
    sput-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 844
    const-class v1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 492
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 507
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$800()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 1

    .line 487
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;)Ljava/util/Map;
    .registers 1

    .line 487
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->getMutableLabelToColorMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 1

    .line 849
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object v0
.end method

.method private getMutableLabelToColorMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetMutableLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method private internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-object p0
.end method

.method private internalGetMutableLabelToColor()Lcom/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 515
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    .line 517
    :cond_10
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-object p0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;
    .registers 1

    .line 662
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;
    .registers 2

    .line 665
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 639
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 645
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 603
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 610
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 650
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 657
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 627
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 634
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 590
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 597
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 2

    .line 615
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .registers 3

    .line 622
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
            ">;"
        }
    .end annotation

    .line 855
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsLabelToColor(Ljava/lang/String;)Z
    .registers 2

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 791
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 833
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 827
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 812
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 814
    const-class p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    monitor-enter p1

    .line 815
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 817
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 820
    sput-object p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 822
    :cond_30
    :goto_30
    monitor-exit p1

    return-object p0

    :goto_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p0

    :cond_34
    return-object p0

    .line 809
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0

    .line 799
    :pswitch_38
    const-string p0, "labelToColor_"

    sget-object p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$LabelToColorDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 803
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 805
    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 796
    :pswitch_49
    new-instance p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;-><init>(Lcom/google/mediapipe/util/proto/ColorProto$1;)V

    return-object p0

    .line 793
    :pswitch_4f
    new-instance p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getLabelToColor()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->getLabelToColorMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLabelToColorCount()I
    .registers 1

    .line 522
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    return p0
.end method

.method public getLabelToColorMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    .line 548
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLabelToColorOrDefault(Ljava/lang/String;Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 4

    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    .line 562
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0

    :cond_14
    return-object p2
.end method

.method public getLabelToColorOrThrow(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    .line 574
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 577
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0

    .line 575
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
