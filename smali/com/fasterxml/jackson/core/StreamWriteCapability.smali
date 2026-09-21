.class public final enum Lcom/fasterxml/jackson/core/StreamWriteCapability;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/core/util/JacksonFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    const-string v1, "CAN_WRITE_BINARY_NATIVELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 34
    new-instance v1, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    const-string v3, "CAN_WRITE_FORMATTED_NUMBERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 14
    filled-new-array {v0, v1}, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .registers 2

    .line 14
    const-class v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .registers 1

    .line 14
    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/StreamWriteCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    return p0
.end method

.method public getMask()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    return p0
.end method
