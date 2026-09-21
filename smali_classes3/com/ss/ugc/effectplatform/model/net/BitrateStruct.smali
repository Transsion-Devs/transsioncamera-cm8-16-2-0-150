.class public final Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public Bitrate:Ljava/lang/Integer;

.field public CodecType:Ljava/lang/String;

.field public FPS:Ljava/lang/Long;

.field public GearName:Ljava/lang/String;

.field public HdrBit:Ljava/lang/String;

.field public HdrType:Ljava/lang/String;

.field public PlayAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrByteVC1:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrH265:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public QualityType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 0
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 11

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->GearName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->Bitrate:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->QualityType:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->PlayAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->PlayAddrH265:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->CodecType:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->PlayAddrByteVC1:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->HdrType:Ljava/lang/String;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->HdrBit:Ljava/lang/String;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;->FPS:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_29

    move-object p8, v0

    :cond_29
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_2e

    move-object p9, v0

    :cond_2e
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_33

    move-object p10, v0

    .line 205
    :cond_33
    invoke-direct/range {p0 .. p10}, Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
