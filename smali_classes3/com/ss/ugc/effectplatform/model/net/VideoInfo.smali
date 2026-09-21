.class public final Lcom/ss/ugc/effectplatform/model/net/VideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public AiCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public AnimatedCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public BigThumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/BigThumb;",
            ">;"
        }
    .end annotation
.end field

.field public BitrateInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;",
            ">;"
        }
    .end annotation
.end field

.field public BlurCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public CaptionDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public CdnUrlExpired:Ljava/lang/Long;

.field public CodecType:Ljava/lang/String;

.field public ContentType:Ljava/lang/Integer;

.field public ControlInfo:Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;

.field public Cover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public CoverTsp:Ljava/lang/Double;

.field public DownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public DownloadSuffixLogoAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public Duration:Ljava/lang/Integer;

.field public DynamicCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public FakeHorizontalInfo:Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;

.field public HasWatermark:Ljava/lang/Boolean;

.field public Height:Ljava/lang/Integer;

.field public HorizontalType:Ljava/lang/Integer;

.field public Id:Ljava/lang/String;

.field public IsCallBack:Ljava/lang/Boolean;

.field public IsLongVideo:Ljava/lang/Integer;

.field public MiscDownloadAddrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            ">;"
        }
    .end annotation
.end field

.field public MiscDownloadAddrsStr:Ljava/lang/String;

.field public NeedSetToken:Ljava/lang/Boolean;

.field public NewDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public OptimizedCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public OriginCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrByteVC1:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrH264:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrH265:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public PlayAddrLowbr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public Ratio:Ljava/lang/String;

.field public ResetCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public TrailerStartTime:Ljava/lang/Double;

.field public UIAlikeDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

.field public UseStaticCover:Ljava/lang/Boolean;

.field public VideoModel:Ljava/lang/String;

.field public Width:Ljava/lang/Integer;

.field public meta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 47

    .line 0
    const/16 v44, 0x3ff

    const/16 v45, 0x0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v45}, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;Ljava/lang/Double;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;Ljava/lang/Double;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;)V
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/BitrateStruct;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/lang/Integer;",
            "Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/lang/Boolean;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/BigThumb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Ljava/lang/Integer;",
            "Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            "Lcom/ss/ugc/effectplatform/model/net/UrlStruct;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Height:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Width:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Duration:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Ratio:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->HasWatermark:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->Cover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->OriginCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->BitrateInfos:Ljava/util/List;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->DynamicCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p11, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->PlayAddrH264:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p12, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->PlayAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p13, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->DownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p14, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->PlayAddrLowbr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    iput-object p15, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->NewDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->DownloadSuffixLogoAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->PlayAddrH265:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->CodecType:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->UIAlikeDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->CaptionDownloadAddr:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->ContentType:Ljava/lang/Integer;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->ControlInfo:Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->CdnUrlExpired:Ljava/lang/Long;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->IsLongVideo:Ljava/lang/Integer;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->VideoModel:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->AnimatedCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->NeedSetToken:Ljava/lang/Boolean;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->AiCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->CoverTsp:Ljava/lang/Double;

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->MiscDownloadAddrs:Ljava/util/Map;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->IsCallBack:Ljava/lang/Boolean;

    move-object/from16 p1, p32

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->PlayAddrByteVC1:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->BigThumbs:Ljava/util/List;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->meta:Ljava/lang/String;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->UseStaticCover:Ljava/lang/Boolean;

    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->OptimizedCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->HorizontalType:Ljava/lang/Integer;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->FakeHorizontalInfo:Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;

    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->TrailerStartTime:Ljava/lang/Double;

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->MiscDownloadAddrsStr:Ljava/lang/String;

    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->BlurCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;->ResetCover:Lcom/ss/ugc/effectplatform/model/net/UrlStruct;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;Ljava/lang/Double;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 85

    move/from16 v0, p43

    move/from16 v1, p44

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_c

    :cond_a
    move-object/from16 v2, p1

    :goto_c
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_14

    :cond_12
    move-object/from16 v4, p2

    :goto_14
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    goto :goto_1c

    :cond_1a
    move-object/from16 v5, p3

    :goto_1c
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_22

    const/4 v6, 0x0

    goto :goto_24

    :cond_22
    move-object/from16 v6, p4

    :goto_24
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_2a

    const/4 v7, 0x0

    goto :goto_2c

    :cond_2a
    move-object/from16 v7, p5

    :goto_2c
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_32

    const/4 v8, 0x0

    goto :goto_34

    :cond_32
    move-object/from16 v8, p6

    :goto_34
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_3a

    const/4 v9, 0x0

    goto :goto_3c

    :cond_3a
    move-object/from16 v9, p7

    :goto_3c
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_42

    const/4 v10, 0x0

    goto :goto_44

    :cond_42
    move-object/from16 v10, p8

    :goto_44
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4a

    const/4 v11, 0x0

    goto :goto_4c

    :cond_4a
    move-object/from16 v11, p9

    :goto_4c
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_52

    const/4 v12, 0x0

    goto :goto_54

    :cond_52
    move-object/from16 v12, p10

    :goto_54
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_5a

    const/4 v13, 0x0

    goto :goto_5c

    :cond_5a
    move-object/from16 v13, p11

    :goto_5c
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_62

    const/4 v14, 0x0

    goto :goto_64

    :cond_62
    move-object/from16 v14, p12

    :goto_64
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_6a

    const/4 v15, 0x0

    goto :goto_6c

    :cond_6a
    move-object/from16 v15, p13

    :goto_6c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_72

    const/4 v3, 0x0

    goto :goto_74

    :cond_72
    move-object/from16 v3, p14

    :goto_74
    move-object/from16 p1, v2

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_7c

    const/4 v2, 0x0

    goto :goto_7e

    :cond_7c
    move-object/from16 v2, p15

    :goto_7e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_88

    const/16 v16, 0x0

    goto :goto_8a

    :cond_88
    move-object/from16 v16, p16

    :goto_8a
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_93

    const/16 v17, 0x0

    goto :goto_95

    :cond_93
    move-object/from16 v17, p17

    :goto_95
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_9e

    const/16 v18, 0x0

    goto :goto_a0

    :cond_9e
    move-object/from16 v18, p18

    :goto_a0
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_a9

    const/16 v19, 0x0

    goto :goto_ab

    :cond_a9
    move-object/from16 v19, p19

    :goto_ab
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_b4

    const/16 v20, 0x0

    goto :goto_b6

    :cond_b4
    move-object/from16 v20, p20

    :goto_b6
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_bf

    const/16 v21, 0x0

    goto :goto_c1

    :cond_bf
    move-object/from16 v21, p21

    :goto_c1
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_ca

    const/16 v22, 0x0

    goto :goto_cc

    :cond_ca
    move-object/from16 v22, p22

    :goto_cc
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_d5

    const/16 v23, 0x0

    goto :goto_d7

    :cond_d5
    move-object/from16 v23, p23

    :goto_d7
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_e0

    const/16 v24, 0x0

    goto :goto_e2

    :cond_e0
    move-object/from16 v24, p24

    :goto_e2
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_eb

    const/16 v25, 0x0

    goto :goto_ed

    :cond_eb
    move-object/from16 v25, p25

    :goto_ed
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_f6

    const/16 v26, 0x0

    goto :goto_f8

    :cond_f6
    move-object/from16 v26, p26

    :goto_f8
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_101

    const/16 v27, 0x0

    goto :goto_103

    :cond_101
    move-object/from16 v27, p27

    :goto_103
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_10c

    const/16 v28, 0x0

    goto :goto_10e

    :cond_10c
    move-object/from16 v28, p28

    :goto_10e
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_117

    const/16 v29, 0x0

    goto :goto_119

    :cond_117
    move-object/from16 v29, p29

    :goto_119
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_122

    const/16 v30, 0x0

    goto :goto_124

    :cond_122
    move-object/from16 v30, p30

    :goto_124
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_12d

    const/16 v31, 0x0

    goto :goto_12f

    :cond_12d
    move-object/from16 v31, p31

    :goto_12f
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_137

    const/4 v0, 0x0

    goto :goto_139

    :cond_137
    move-object/from16 v0, p32

    :goto_139
    and-int/lit8 v32, v1, 0x1

    if-eqz v32, :cond_140

    const/16 v32, 0x0

    goto :goto_142

    :cond_140
    move-object/from16 v32, p33

    :goto_142
    and-int/lit8 v33, v1, 0x2

    if-eqz v33, :cond_149

    const/16 v33, 0x0

    goto :goto_14b

    :cond_149
    move-object/from16 v33, p34

    :goto_14b
    and-int/lit8 v34, v1, 0x4

    if-eqz v34, :cond_152

    const/16 v34, 0x0

    goto :goto_154

    :cond_152
    move-object/from16 v34, p35

    :goto_154
    and-int/lit8 v35, v1, 0x8

    if-eqz v35, :cond_15b

    const/16 v35, 0x0

    goto :goto_15d

    :cond_15b
    move-object/from16 v35, p36

    :goto_15d
    and-int/lit8 v36, v1, 0x10

    if-eqz v36, :cond_164

    const/16 v36, 0x0

    goto :goto_166

    :cond_164
    move-object/from16 v36, p37

    :goto_166
    and-int/lit8 v37, v1, 0x20

    if-eqz v37, :cond_16d

    const/16 v37, 0x0

    goto :goto_16f

    :cond_16d
    move-object/from16 v37, p38

    :goto_16f
    and-int/lit8 v38, v1, 0x40

    if-eqz v38, :cond_176

    const/16 v38, 0x0

    goto :goto_178

    :cond_176
    move-object/from16 v38, p39

    :goto_178
    move-object/from16 p2, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_180

    const/4 v0, 0x0

    goto :goto_182

    :cond_180
    move-object/from16 v0, p40

    :goto_182
    move-object/from16 p3, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_18a

    const/4 v0, 0x0

    goto :goto_18c

    :cond_18a
    move-object/from16 v0, p41

    :goto_18c
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1e7

    const/16 p43, 0x0

    :goto_192
    move-object/from16 p33, p2

    move-object/from16 p41, p3

    move-object/from16 p42, v0

    move-object/from16 p16, v2

    move-object/from16 p15, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p34, v32

    move-object/from16 p35, v33

    move-object/from16 p36, v34

    move-object/from16 p37, v35

    move-object/from16 p38, v36

    move-object/from16 p39, v37

    move-object/from16 p40, v38

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    goto :goto_1ea

    :cond_1e7
    move-object/from16 p43, p42

    goto :goto_192

    .line 157
    :goto_1ea
    invoke-direct/range {p1 .. p43}, Lcom/ss/ugc/effectplatform/model/net/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Ljava/lang/Integer;Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;Ljava/lang/Double;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;Lcom/ss/ugc/effectplatform/model/net/UrlStruct;)V

    return-void
.end method
