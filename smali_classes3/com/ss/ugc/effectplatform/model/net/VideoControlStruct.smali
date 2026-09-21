.class public final Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public AllowDownload:Ljava/lang/Boolean;

.field public AllowDuet:Ljava/lang/Boolean;

.field public AllowDynamicWallpaper:Ljava/lang/Boolean;

.field public AllowReact:Ljava/lang/Boolean;

.field public AllowStitch:Ljava/lang/Boolean;

.field public AllowUseMusic:Ljava/lang/Boolean;

.field public DownloadSetting:Ljava/lang/Integer;

.field public DraftProgressBar:Ljava/lang/Integer;

.field public HideDouplus:Ljava/lang/Boolean;

.field public HideDownload:Ljava/lang/Boolean;

.field public PreventDownloadType:Ljava/lang/Integer;

.field public ShareType:Ljava/lang/Integer;

.field public ShowProgressBar:Ljava/lang/Integer;

.field public TimerStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 18

    .line 0
    const/16 v15, 0x3fff

    const/16 v16, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 15

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowDownload:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowDuet:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowReact:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->DraftProgressBar:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->ShareType:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->ShowProgressBar:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->PreventDownloadType:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowDynamicWallpaper:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->TimerStatus:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowUseMusic:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->HideDownload:Ljava/lang/Boolean;

    iput-object p12, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->HideDouplus:Ljava/lang/Boolean;

    iput-object p13, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->AllowStitch:Ljava/lang/Boolean;

    iput-object p14, p0, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;->DownloadSetting:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 32

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_13

    :cond_11
    move-object/from16 v3, p2

    :goto_13
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_19

    move-object v4, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v4, p3

    :goto_1b
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_21

    move-object v5, v2

    goto :goto_23

    :cond_21
    move-object/from16 v5, p4

    :goto_23
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_29

    move-object v6, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p5

    :goto_2b
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_31

    move-object v7, v2

    goto :goto_33

    :cond_31
    move-object/from16 v7, p6

    :goto_33
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_39

    move-object v8, v2

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p7

    :goto_3b
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_41

    move-object v9, v2

    goto :goto_43

    :cond_41
    move-object/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_49

    move-object v10, v2

    goto :goto_4b

    :cond_49
    move-object/from16 v10, p9

    :goto_4b
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_51

    move-object v11, v2

    goto :goto_53

    :cond_51
    move-object/from16 v11, p10

    :goto_53
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_59

    move-object v12, v2

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p11

    :goto_5b
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_61

    move-object v13, v2

    goto :goto_63

    :cond_61
    move-object/from16 v13, p12

    :goto_63
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_69

    move-object v14, v2

    goto :goto_6b

    :cond_69
    move-object/from16 v14, p13

    :goto_6b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8e

    move-object/from16 p15, v2

    :goto_71
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    goto :goto_91

    :cond_8e
    move-object/from16 p15, p14

    goto :goto_71

    .line 238
    :goto_91
    invoke-direct/range {p1 .. p15}, Lcom/ss/ugc/effectplatform/model/net/VideoControlStruct;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
