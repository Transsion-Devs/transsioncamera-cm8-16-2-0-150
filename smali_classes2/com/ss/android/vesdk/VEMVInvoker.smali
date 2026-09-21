.class public Lcom/ss/android/vesdk/VEMVInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVEMusicVideo;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEEditor_VEMVInvoker"


# instance fields
.field private mIsMVInit:Z

.field private mMVBackgroundAudioRid:I

.field private mMVBackgroundAudioTrackIndex:I

.field private mMVFilterIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

.field private mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

.field private mMVKaraokeAudioTrackIndex:I

.field private mMVPath:Ljava/lang/String;

.field private mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

.field private mMVResourcePaths:[Ljava/lang/String;

.field private mMVResourceTypes:[Ljava/lang/String;

.field private mMVSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private final mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;

.field private mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

.field private mvResolution:Lcom/ss/android/vesdk/VEMVParams$MVResolution;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioTrackIndex:I

    .line 66
    iput v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVKaraokeAudioTrackIndex:I

    .line 68
    new-instance v0, Lcom/ss/android/vesdk/VEMVInvoker$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEMVInvoker$1;-><init>(Lcom/ss/android/vesdk/VEMVInvoker;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

    .line 81
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 82
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 83
    new-instance v0, Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/jni/TEMVInterface;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEMVInvoker;)Lcom/ss/android/vesdk/VEListener$VEMVInitListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

    return-object p0
.end method

.method private genMVResourceTracks(Lcom/ss/android/ttve/model/MVInfoBean;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ttve/model/MVInfoBean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 659
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p1

    .line 663
    iget-object v4, v4, Lcom/ss/android/ttve/model/MVInfoBean;->resources:Ljava/util/ArrayList;

    .line 666
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 670
    :goto_20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1bc

    .line 671
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 674
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 675
    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a5

    .line 676
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 678
    iget v15, v14, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_50

    goto :goto_37

    .line 682
    :cond_50
    const-string v15, "video"

    const-wide/16 v16, 0x0

    iget-object v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "bgimg"

    const-string v15, "img"

    const-wide v18, 0x408f400000000000L    # 1000.0

    if-nez v8, :cond_75

    iget-object v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 683
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_75

    iget-object v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 684
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    :cond_75
    move-object v8, v1

    goto/16 :goto_11d

    .line 709
    :cond_78
    const-string v8, "audio"

    iget-object v9, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 710
    iget-wide v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_fa

    .line 712
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 713
    new-instance v9, Lcom/ss/android/ttve/model/MVResourceBean;

    invoke-direct {v9}, Lcom/ss/android/ttve/model/MVResourceBean;-><init>()V

    .line 714
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    .line 715
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    .line 716
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    .line 717
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    .line 718
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeIn:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeIn:D

    .line 719
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeOut:D

    mul-double v12, v12, v18

    iput-wide v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeOut:D

    .line 720
    iget-object v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    iput-object v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    .line 721
    iget-object v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    iput-object v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 722
    iget v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    iput v12, v9, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    .line 723
    iget v13, v14, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    iput v13, v9, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    .line 724
    iget-boolean v13, v14, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    iput-boolean v13, v9, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    .line 725
    iget v13, v14, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    iput v13, v9, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    .line 726
    iget v13, v0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    if-nez v13, :cond_d4

    .line 728
    iput v12, v0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    .line 730
    :cond_d4
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-wide v12, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    .line 732
    iget v14, v9, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v9, v9, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    move-object/from16 v15, p3

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_f2

    .line 735
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    :goto_f2
    move-object/from16 v9, p2

    move-object v8, v1

    :goto_f5
    move-object v1, v3

    move-object/from16 p1, v4

    goto/16 :goto_19d

    :cond_fa
    move-object/from16 v15, p3

    goto :goto_f2

    :cond_fd
    move-object/from16 v15, p3

    .line 738
    const-string v8, "text"

    iget-object v9, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 739
    iget v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    .line 741
    :cond_113
    iget v8, v14, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    .line 685
    :goto_11d
    iget-wide v0, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_199

    .line 686
    new-instance v0, Lcom/ss/android/ttve/model/MVResourceBean;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/MVResourceBean;-><init>()V

    .line 687
    iget-wide v10, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    mul-double v10, v10, v18

    iput-wide v10, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    .line 688
    iget-wide v10, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    mul-double v10, v10, v18

    iput-wide v10, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    .line 689
    iget-wide v10, v14, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    mul-double v10, v10, v18

    iput-wide v10, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    .line 690
    iget-wide v10, v14, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    mul-double v10, v10, v18

    iput-wide v10, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    move-object v1, v3

    move-object/from16 p1, v4

    .line 691
    iget-wide v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeIn:D

    mul-double v3, v3, v18

    iput-wide v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeIn:D

    .line 692
    iget-wide v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeOut:D

    mul-double v3, v3, v18

    iput-wide v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeOut:D

    cmpl-double v3, v10, v16

    if-nez v3, :cond_16a

    .line 693
    iget-object v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 694
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_163

    iget-object v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 695
    :cond_163
    iget-wide v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    iget-wide v9, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    sub-double/2addr v3, v9

    iput-wide v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    .line 697
    :cond_16a
    iget-object v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    iput-object v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    .line 698
    iget-object v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    iput-object v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 699
    iget v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    iput v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    .line 700
    iget v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    iput v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    .line 701
    iget-boolean v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    iput-boolean v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    .line 702
    iget v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    iput v3, v0, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    .line 703
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-wide v3, v14, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    .line 705
    iget v9, v0, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, v0, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    move-object/from16 v9, p2

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v10, v3

    goto :goto_19d

    :cond_199
    move-object/from16 v9, p2

    goto/16 :goto_f5

    :goto_19d
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_37

    :cond_1a5
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v1, v3

    move-object/from16 p1, v4

    .line 744
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b4

    .line 745
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b4
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_20

    :cond_1bc
    move-object v8, v1

    return-object v8
.end method

.method private genResourcesArr(Ljava/util/List;[I[I[I[I[Ljava/lang/String;[II[Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;[I[I[I[I[",
            "Ljava/lang/String;",
            "[II[Z)V"
        }
    .end annotation

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 765
    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 766
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 767
    iget-wide v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    double-to-int v3, v3

    aput v3, p2, v1

    .line 768
    iget-wide v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    double-to-int v3, v3

    aput v3, p3, v1

    .line 769
    iget-wide v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int v3, v3

    aput v3, p4, v1

    .line 770
    iget-wide v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    double-to-int v3, v3

    aput v3, p5, v1

    .line 771
    iget-object v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    aput-object v3, p6, v1

    .line 772
    iget v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    aput v3, p7, v1

    .line 773
    iget-boolean v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    aput-boolean v3, p9, v1

    move/from16 v3, p8

    .line 774
    iput v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    .line 775
    iput v1, v2, Lcom/ss/android/ttve/model/MVResourceBean;->clipIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 778
    iget-object v4, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v0

    .line 779
    :goto_49
    iget-object v5, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v5}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 780
    iget-object v5, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v5, v4}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->get(I)Lcom/ss/android/ttve/model/MVResourceBean;

    move-result-object v5

    .line 781
    iget-object v6, v5, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    iget-object v7, v2, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    iget v5, v5, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6c

    .line 782
    iget-object v5, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v5, v4, v2}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->set(ILcom/ss/android/ttve/model/MVResourceBean;)Z

    goto :goto_6

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_6f
    return-void
.end method

.method private genResourcesArrCycle(Lcom/ss/android/ttve/model/MVResourceBean;[I[I[I[I[Ljava/lang/String;[II)Z
    .registers 15

    .line 795
    iget-wide v0, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    iget-wide v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    sub-double/2addr v0, v2

    double-to-int p0, v0

    const/4 v0, 0x0

    if-gtz p8, :cond_11

    .line 797
    const-string p0, "VEEditor_VEMVInvoker"

    const-string p1, "mvDuration invalied ..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_11
    move v1, v0

    move v2, v1

    :goto_13
    add-int v3, v1, p0

    if-gt v3, p8, :cond_39

    .line 805
    iget-wide v4, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    double-to-int v4, v4

    aput v4, p2, v2

    .line 806
    iget-wide v4, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    double-to-int v4, v4

    aput v4, p3, v2

    .line 807
    iget-wide v4, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int v4, v4

    add-int/2addr v4, v1

    aput v4, p4, v2

    .line 808
    iget-wide v4, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    double-to-int v4, v4

    add-int/2addr v4, v1

    aput v4, p5, v2

    .line 809
    iget-object v1, p1, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    aput-object v1, p6, v2

    .line 810
    iget v1, p1, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    aput v1, p7, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_13

    :cond_39
    if-ge v1, p8, :cond_51

    .line 816
    aput v0, p2, v2

    sub-int p0, p8, v1

    .line 817
    aput p0, p3, v2

    .line 818
    iget-wide p2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int p0, p2

    add-int/2addr p0, v1

    aput p0, p4, v2

    .line 819
    aput p8, p5, v2

    .line 820
    iget-object p0, p1, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    aput-object p0, p6, v2

    .line 821
    iget p0, p1, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    aput p0, p7, v2

    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method private genResourcesArrRepeat(Lcom/ss/android/ttve/model/MVResourceBean;[I[I[I[I[Ljava/lang/String;[II)Z
    .registers 13

    .line 832
    iget-wide v0, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    iget-wide v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    sub-double/2addr v0, v2

    double-to-int p0, v0

    .line 834
    iget-wide v0, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int v0, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p8, :cond_26

    .line 836
    iget-object v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    aput-object v2, p6, v1

    .line 837
    iget v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    aput v2, p7, v1

    .line 838
    iget-wide v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    double-to-int v2, v2

    aput v2, p2, v1

    .line 839
    iget-wide v2, p1, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    double-to-int v2, v2

    aput v2, p3, v1

    .line 840
    aput v0, p4, v1

    add-int/2addr v0, p0

    .line 841
    aput v0, p5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_26
    const/4 p0, 0x1

    sub-int/2addr p8, p0

    .line 844
    iget-wide p6, p1, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    double-to-int p1, p6

    aput p1, p5, p8

    .line 845
    aget p4, p4, p8

    sub-int/2addr p1, p4

    aget p2, p2, p8

    add-int/2addr p1, p2

    aput p1, p3, p8

    return p0
.end method

.method private initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I
    .registers 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/String;",
            "II",
            "Lcom/ss/android/vesdk/VEMVParams$MVResolution;",
            "ZZ[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;FF[",
            "Ljava/lang/String;",
            "[I[F",
            "Lcom/ss/android/vesdk/VESize;",
            "Lcom/ss/android/vesdk/VESize;",
            "I)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p12

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move-object/from16 v0, p19

    const/4 v7, 0x1

    .line 404
    invoke-static {v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 406
    invoke-static {v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 407
    iget-object v8, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ss/android/vesdk/VEEditor;->setLastTimeMS(J)V

    .line 408
    iget-object v8, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ss/android/vesdk/VEEditor;->setInitTimeMS(J)V

    .line 409
    const-string v8, "initMVInternal..."

    const-string v9, "VEEditor_VEMVInvoker"

    invoke-static {v9, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v8, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v10, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

    invoke-virtual {v8, v10}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setmMVInitedCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;)V

    .line 412
    iput-object v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    .line 413
    iput-object v4, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    move-object/from16 v8, p3

    .line 414
    iput-object v8, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    move-object/from16 v10, p8

    .line 415
    iput-object v10, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvResolution:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    .line 416
    iput-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVSize:Ljava/util/List;

    if-eqz v5, :cond_5a

    if-eqz v6, :cond_5a

    .line 420
    array-length v12, v5

    array-length v13, v6

    if-ne v12, v13, :cond_5a

    .line 422
    array-length v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4e
    if-ge v13, v12, :cond_56

    aget v15, v6, v13

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    :cond_56
    move v15, v14

    const/16 v32, 0x0

    goto :goto_5d

    :cond_5a
    move/from16 v32, v7

    const/4 v15, 0x0

    :goto_5d
    const/4 v12, -0x1

    if-nez p18, :cond_66

    .line 428
    new-instance v13, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v13, v12, v12}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    goto :goto_68

    :cond_66
    move-object/from16 v13, p18

    .line 430
    :goto_68
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVFilterIndex:Ljava/util/List;

    if-eqz v0, :cond_7c

    .line 432
    iget-object v14, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget v7, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    move/from16 v11, p20

    invoke-virtual {v14, v7, v0, v11}, Lcom/ss/android/vesdk/VEEditor;->setImageResizeInfo(III)V

    .line 437
    :cond_7c
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 438
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_88

    const/4 v10, 0x1

    goto :goto_89

    :cond_88
    const/4 v10, 0x0

    :goto_89
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    iget v0, v13, Lcom/ss/android/vesdk/VESize;->width:I

    iget v7, v13, Lcom/ss/android/vesdk/VESize;->height:I

    move-object/from16 v6, p4

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v16, v0

    move/from16 v17, v7

    move-object v5, v8

    move-object/from16 v36, v9

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 437
    invoke-virtual/range {v2 .. v17}, Lcom/ss/android/vesdk/jni/TEMVInterface;->initMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IIZZZ[Ljava/lang/String;IIII)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v3

    move-object v12, v4

    check-cast v0, Lcom/ss/android/ttve/model/MVInfoBean;

    iput-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    if-nez v0, :cond_bb

    .line 440
    const-string v0, "initMVInternal failed"

    move-object/from16 v13, v36

    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, -0x1

    return v14

    :cond_bb
    move-object/from16 v13, v36

    const/4 v14, -0x1

    .line 445
    new-instance v0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;-><init>()V

    iput-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    .line 446
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    iget-object v0, v0, Lcom/ss/android/ttve/model/MVInfoBean;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_ce
    :goto_ce
    if-ge v3, v2, :cond_ec

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 447
    iget-object v5, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v4, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 448
    iget-object v5, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v5, v4}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->add(Lcom/ss/android/ttve/model/MVResourceBean;)Z

    goto :goto_ce

    :cond_ec
    const/4 v3, 0x1

    .line 452
    iput-boolean v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mIsMVInit:Z

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 456
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    invoke-direct {v1, v0, v2, v4}, Lcom/ss/android/vesdk/VEMVInvoker;->genMVResourceTracks(Lcom/ss/android/ttve/model/MVInfoBean;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_585

    const/4 v5, 0x0

    .line 460
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 461
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_57c

    .line 464
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v16, v3

    .line 465
    new-array v3, v7, [I

    move-object v8, v4

    .line 466
    new-array v4, v7, [I

    .line 467
    new-array v9, v7, [I

    .line 468
    new-array v10, v7, [I

    move/from16 v35, v14

    .line 469
    new-array v14, v7, [Ljava/lang/String;

    move-object/from16 v17, v8

    .line 470
    new-array v8, v7, [I

    .line 471
    new-array v7, v7, [Z

    .line 472
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    move-object/from16 v20, v9

    const/4 v9, 0x0

    move-object/from16 v34, v2

    move-object/from16 v33, v6

    move-object v6, v10

    move/from16 p11, v15

    move/from16 v15, v16

    move-object/from16 p9, v17

    move-object/from16 v2, v18

    move-object v10, v7

    move-object v7, v14

    move v14, v5

    move-object/from16 v5, v20

    invoke-direct/range {v1 .. v10}, Lcom/ss/android/vesdk/VEMVInvoker;->genResourcesArr(Ljava/util/List;[I[I[I[I[Ljava/lang/String;[II[Z)V

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v8

    .line 474
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Ljava/util/List;

    .line 481
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 482
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    iget v3, v2, Lcom/ss/android/ttve/model/MVInfoBean;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v2, v2, Lcom/ss/android/ttve/model/MVInfoBean;->height:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    cmpl-float v2, v3, v4

    if-nez v2, :cond_178

    .line 484
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    :cond_176
    :goto_176
    move-object v10, v0

    goto :goto_19e

    :cond_178
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_181

    .line 486
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    goto :goto_176

    :cond_181
    const v2, 0x3faaaaab

    cmpl-float v2, v3, v2

    if-nez v2, :cond_18b

    .line 488
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    goto :goto_176

    :cond_18b
    const v2, 0x3fe38e39

    cmpl-float v2, v3, v2

    if-nez v2, :cond_195

    .line 490
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    goto :goto_176

    :cond_195
    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_176

    .line 492
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    goto :goto_176

    .line 495
    :goto_19e
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    const/16 v30, 0x0

    .line 497
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v31

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v0

    .line 495
    invoke-virtual/range {v16 .. v32}, Lcom/ss/android/vesdk/jni/TEMVInterface;->initVideoEditor2([Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FIZ)I

    move-result v2

    .line 499
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 501
    :try_start_1bf
    const-string v3, "mvPath"

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v3, "resourcesFilePaths"

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v3, "resourcesTypes"

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v3, "bgmPath"

    move-object/from16 v7, p5

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v3, "bgmTrimIn"

    move/from16 v8, p6

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string v3, "bgmTrimOut"

    move/from16 v9, p7

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v3, "resultCode"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string v3, "vesdk_event_editor_init_mv"

    const-string v4, "behavior"

    invoke-static {v3, v0, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1f7
    .catch Lorg/json/JSONException; {:try_start_1bf .. :try_end_1f7} :catch_1f8

    goto :goto_1fc

    :catch_1f8
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1fc
    if-eqz v2, :cond_21d

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Scene failed, ret = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 517
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v14}, Lcom/ss/android/vesdk/VEEditor;->setInitSuccess(Z)V

    return v2

    .line 524
    :cond_21d
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v11, v15

    move/from16 v16, v11

    .line 527
    :goto_224
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40f

    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v11, :cond_234

    move v11, v14

    goto :goto_224

    .line 534
    :cond_234
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz p10, :cond_278

    .line 536
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v15, :cond_278

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v5, v5, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    if-ne v5, v15, :cond_278

    .line 537
    aget v4, p4, v14

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v5, v5, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v7, v7, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    sub-double/2addr v5, v7

    double-to-int v5, v5

    div-int/2addr v4, v5

    .line 538
    aget v5, p4, v14

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v6, v6, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v8, v8, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    sub-double/2addr v6, v8

    double-to-int v6, v6

    rem-int/2addr v5, v6

    if-eqz v5, :cond_278

    add-int/lit8 v4, v4, 0x1

    .line 543
    :cond_278
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v5, v5, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_285

    move v7, v15

    goto :goto_286

    :cond_285
    move v7, v14

    .line 544
    :goto_286
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v5, v5, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_293

    move v5, v15

    goto :goto_294

    :cond_293
    move v5, v14

    .line 546
    :goto_294
    const-string v6, ", trimIn = "

    const-string v8, ", trimOut = "

    const-string v9, ", seqIn = "

    if-eqz v7, :cond_31b

    .line 547
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v3, v4, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcom/ss/android/ttve/model/MVResourceBean;

    move-object/from16 p3, v0

    iget-wide v0, v15, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    sub-double/2addr v3, v0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v0, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v15, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    sub-double/2addr v0, v14

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMV, video repeat in. counts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seqOut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    .line 549
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31d

    :cond_31b
    move-object/from16 p3, v0

    :goto_31d
    if-eqz v5, :cond_368

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMV, video stretch in. seqOut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v14, v1, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    .line 554
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v8, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v5, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_368
    new-array v3, v4, [I

    .line 558
    new-array v0, v4, [I

    .line 559
    new-array v5, v4, [I

    .line 560
    new-array v6, v4, [I

    move-object v14, v10

    .line 561
    new-array v10, v4, [Z

    move v15, v7

    .line 562
    new-array v7, v4, [Ljava/lang/String;

    .line 563
    new-array v8, v4, [I

    if-eqz p10, :cond_3b1

    .line 566
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_3b1

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v1, v1, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    if-ne v1, v9, :cond_3b1

    const/4 v1, 0x0

    .line 567
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/MVResourceBean;

    aget v9, p4, v1

    move-object v4, v0

    move/from16 v17, v1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/vesdk/VEMVInvoker;->genResourcesArrCycle(Lcom/ss/android/ttve/model/MVResourceBean;[I[I[I[I[Ljava/lang/String;[II)Z

    move-result v2

    move-object/from16 v24, v4

    if-nez v2, :cond_3a6

    return v35

    :cond_3a6
    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move-object/from16 v29, v10

    move/from16 v9, v16

    move-object/from16 v4, v24

    goto :goto_3d9

    :cond_3b1
    move-object/from16 v24, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v15, :cond_3cc

    .line 572
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/MVResourceBean;

    move-object/from16 v1, p0

    move v9, v4

    move-object/from16 v4, v24

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/vesdk/VEMVInvoker;->genResourcesArrRepeat(Lcom/ss/android/ttve/model/MVResourceBean;[I[I[I[I[Ljava/lang/String;[II)Z

    move-object/from16 v2, p12

    move-object/from16 v29, v10

    move/from16 v9, v16

    goto :goto_3d9

    :cond_3cc
    move-object/from16 v1, p0

    move/from16 v9, v16

    move-object/from16 v4, v24

    .line 574
    invoke-direct/range {v1 .. v10}, Lcom/ss/android/vesdk/VEMVInvoker;->genResourcesArr(Ljava/util/List;[I[I[I[I[Ljava/lang/String;[II[Z)V

    move-object/from16 v29, v10

    move-object/from16 v2, p12

    :goto_3d9
    if-eqz v2, :cond_3e7

    .line 578
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_3e7

    .line 579
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v12, v7, v2}, Lcom/ss/android/vesdk/VEEditor;->genVideoTrackSizeFromPath([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)[Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    :cond_3e7
    move-object/from16 v27, v0

    .line 582
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    const/16 v28, 0x0

    const/16 v20, 0x0

    move/from16 v30, p14

    move-object/from16 v18, v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v7

    move-object/from16 v25, v8

    invoke-virtual/range {v18 .. v30}, Lcom/ss/android/vesdk/jni/TEMVInterface;->addVideoTrackForMV([Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II[Lcom/ss/android/vesdk/VESize;I[ZF)I

    add-int/lit8 v16, v9, 0x1

    move-object/from16 v0, p3

    move-object v10, v14

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_224

    :cond_40f
    move-object v14, v10

    const/4 v0, 0x0

    .line 586
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 587
    :cond_415
    :goto_415
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d7

    if-lez p11, :cond_424

    .line 589
    const-string v2, "karaoke not support other audio tracks."

    invoke-static {v13, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d7

    .line 592
    :cond_424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 593
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_431

    goto :goto_415

    :cond_431
    const/4 v5, 0x0

    .line 596
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v6, v4, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    double-to-int v4, v6

    .line 597
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v6, v6, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    double-to-int v6, v6

    .line 598
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v7, v7, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int v7, v7

    .line 599
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v8, v8, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    double-to-int v8, v8

    .line 600
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v9, v9, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeIn:D

    double-to-int v9, v9

    .line 601
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-wide v10, v10, Lcom/ss/android/ttve/model/MVResourceBean;->musicFadeOut:D

    double-to-int v10, v10

    .line 602
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/ttve/model/MVResourceBean;

    iget-object v11, v11, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    .line 603
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v12, v12, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    if-lez v12, :cond_47d

    const/16 v25, 0x1

    goto :goto_47f

    :cond_47d
    move/from16 v25, v5

    .line 604
    :goto_47f
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ttve/model/MVResourceBean;

    iget v3, v3, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    .line 605
    iget-object v5, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    move/from16 v26, p13

    move/from16 v24, v3

    move/from16 v22, v4

    move-object/from16 v18, v5

    move/from16 v23, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v26}, Lcom/ss/android/vesdk/jni/TEMVInterface;->addAudioTrackForMV(Ljava/lang/String;IIIIIZF)I

    move-result v3

    move/from16 v4, v24

    .line 606
    iget v5, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    if-ne v4, v5, :cond_415

    .line 607
    iput v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioTrackIndex:I

    if-gtz v9, :cond_4a9

    if-lez v10, :cond_415

    .line 609
    :cond_4a9
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;-><init>()V

    .line 610
    iput v9, v3, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeInLength:I

    .line 611
    iput v10, v3, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeOutLength:I

    .line 613
    iget-object v4, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v5, 0x1

    iget v6, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioTrackIndex:I

    move-object/from16 p4, v3

    move-object/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v6

    move/from16 p5, v20

    move/from16 p6, v21

    invoke-virtual/range {p1 .. p6}, Lcom/ss/android/vesdk/VEEditor;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v3

    move-object/from16 v4, p4

    if-ltz v3, :cond_415

    .line 615
    iget-object v5, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5, v3, v4}, Lcom/ss/android/vesdk/VEEditor;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 616
    iget-object v4, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4, v3}, Lcom/ss/android/vesdk/VEEditor;->updateMVFilterInternal(I)V

    goto/16 :goto_415

    :cond_4d7
    :goto_4d7
    if-lez p11, :cond_500

    .line 623
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object/from16 v5, p15

    array-length v3, v5

    new-array v3, v3, [I

    move-object/from16 v6, p16

    move-object/from16 v4, p17

    invoke-virtual {v2, v5, v3, v6, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrackForClips([Ljava/lang/String;[I[I[F)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVKaraokeAudioTrackIndex:I

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initMVInternal karaoke audio track index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVKaraokeAudioTrackIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_500
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/ss/android/vesdk/VEEditor;->setInitSuccess(Z)V

    .line 628
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2, v14}, Lcom/ss/android/vesdk/VEEditor;->setVideoOutRes(Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)V

    .line 629
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object v2

    .line 630
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 631
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 632
    iget-object v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    move-object/from16 v8, p9

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 633
    iget-object v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    move-object/from16 v4, v34

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 634
    iput-object v0, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    const/4 v14, 0x0

    .line 635
    iput v14, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 636
    iput v14, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 637
    iput-boolean v14, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 638
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move/from16 v2, v35

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEEditor;->setMusicSRTEffectFilterIndex(I)V

    .line 639
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEEditor;->setSeparateAV(Ljava/lang/Boolean;)V

    .line 640
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v14}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 641
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    iget v3, v2, Lcom/ss/android/ttve/model/MVInfoBean;->width:I

    iget v2, v2, Lcom/ss/android/ttve/model/MVInfoBean;->height:I

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getLastTimeMS()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMVInternal success with cost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->initFilters()I

    move-result v0

    return v0

    .line 462
    :cond_57c
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "No MV video information."

    const/4 v14, -0x1

    invoke-direct {v0, v14, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 458
    :cond_585
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "No MV information."

    invoke-direct {v0, v14, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/String;",
            "II",
            "Lcom/ss/android/vesdk/VEMVParams$MVResolution;",
            "ZZ[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;Z[",
            "Ljava/lang/String;",
            "[I[F)I"
        }
    .end annotation

    move-object/from16 v2, p0

    .line 852
    iget-object v1, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 853
    :try_start_5
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v3, "reinitMV..."

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_103

    if-eqz p2, :cond_103

    if-nez p3, :cond_14

    goto/16 :goto_103

    .line 859
    :cond_14
    iget-object v0, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v3, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    const/4 v0, -0x1

    if-eqz p13, :cond_47

    .line 861
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->resetTrackIndexManager()V

    .line 862
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->releaseEngine()I

    move-result v3

    if-eqz v3, :cond_67

    .line 864
    const-string v2, "VEEditor_VEMVInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop in reInitMV failed, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    monitor-exit v1

    return v0

    :catchall_44
    move-exception v0

    goto/16 :goto_10e

    .line 868
    :cond_47
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v3

    if-eqz v3, :cond_67

    .line 870
    const-string v2, "VEEditor_VEMVInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release in reInitMV failed, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    monitor-exit v1

    return v0

    .line 875
    :cond_67
    iput v4, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    .line 876
    iput v0, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mMVKaraokeAudioTrackIndex:I

    .line 878
    iget-object v0, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mMVFilterIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    move v3, v4

    .line 879
    :goto_74
    iget-object v5, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mMVFilterIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8d

    .line 880
    iget-object v5, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mMVFilterIndex:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 882
    :cond_8d
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3, v0}, Lcom/ss/android/vesdk/VEEditor;->deleteFilterEffects([I)I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move v0, v4

    move-object/from16 v4, p2

    .line 883
    invoke-direct/range {v2 .. v22}, Lcom/ss/android/vesdk/VEMVInvoker;->initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I

    move-result v3

    if-eqz v3, :cond_d9

    .line 885
    const-string v0, "VEEditor_VEMVInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init2 in reInitMV failed, ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    monitor-exit v1

    return v3

    .line 890
    :cond_d9
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 892
    iget-object v3, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v3

    .line 894
    iget-object v4, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4, v0, v0, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateTrackFilter(IIZ)I

    .line 895
    iget-object v4, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor;->getCurColorFilter()Lcom/ss/android/ttve/model/FilterBean;

    move-result-object v4

    if-eqz v4, :cond_101

    .line 896
    iget-object v2, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getCurColorFilter()Lcom/ss/android/ttve/model/FilterBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v0, v6}, Lcom/ss/android/vesdk/VEEditor;->setColorFilter(Ljava/lang/String;FZZ)I

    .line 898
    :cond_101
    monitor-exit v1

    return v3

    .line 855
    :cond_103
    :goto_103
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v2, "reinitMV bad input file, please call init2 first"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0xcd

    .line 856
    monitor-exit v1

    return v0

    .line 899
    :goto_10e
    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_5 .. :try_end_10f} :catchall_44

    throw v0
.end method


# virtual methods
.method public addMVFilterInternal(I)V
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVFilterIndex:Ljava/util/List;

    if-eqz p0, :cond_b

    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public changeMvUserVideoInfoInternal(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
    .registers 14

    .line 343
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    const-string v1, "VEEditor_VEMVInvoker"

    if-nez v0, :cond_e

    .line 344
    const-string p0, "changeMvUserVideoInfo... mvResInfo was not inited!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x1f6

    return p0

    :cond_e
    if-eqz p3, :cond_14

    .line 348
    array-length v0, p2

    array-length v2, p3

    if-ne v0, v2, :cond_1a

    :cond_14
    if-eqz p4, :cond_21

    array-length v0, p2

    array-length v2, p4

    if-eq v0, v2, :cond_21

    .line 350
    :cond_1a
    const-string p0, "changeMvUserVideoInfo... Invalid params!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_21
    const/4 v0, 0x0

    move v1, v0

    .line 354
    :goto_23
    iget-object v2, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v2}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 356
    array-length v2, p2

    move v3, v0

    move v4, v3

    :goto_2e
    if-ge v3, v2, :cond_60

    aget v5, p2, v3

    .line 357
    iget-object v6, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v6, v1}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->get(I)Lcom/ss/android/ttve/model/MVResourceBean;

    move-result-object v6

    .line 358
    iget v7, v6, Lcom/ss/android/ttve/model/MVResourceBean;->clipIndex:I

    if-ne v7, v5, :cond_5b

    iget v5, v6, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    if-ne v5, p1, :cond_5b

    if-eqz p3, :cond_4e

    .line 361
    aget-object v5, p3, v4

    iget v7, v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    int-to-double v7, v7

    iput-wide v7, v6, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    .line 362
    iget v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    int-to-double v7, v5

    iput-wide v7, v6, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    :cond_4e
    if-eqz p4, :cond_56

    .line 365
    aget-object v5, p4, v4

    iget-object v5, v5, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    iput-object v5, v6, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    .line 367
    :cond_56
    iget-object v5, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v5, v1, v6}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->set(ILcom/ss/android/ttve/model/MVResourceBean;)Z

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_63
    return v0
.end method

.method public clearNativeFromMV()V
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEMVInterface;->clearNative()V

    return-void
.end method

.method public getMVBackgroundAudioRid()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioRid:I

    return p0
.end method

.method public getMVBackgroundAudioTrackIndex()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioTrackIndex:I

    return p0
.end method

.method public getMVInfo()Lcom/ss/android/ttve/model/MVInfoBean;
    .registers 3

    .line 136
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mIsMVInit:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mvInfo:Lcom/ss/android/ttve/model/MVInfoBean;

    if-eqz p0, :cond_a

    return-object p0

    .line 141
    :cond_a
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string v0, "MV resource information construction failed!"

    invoke-direct {p0, v1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 137
    :cond_12
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string v0, "The MV resource has not been initialized yet, please call the init2 method"

    invoke-direct {p0, v1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getMVKaraokeAudioIndex()I
    .registers 1

    .line 277
    iget p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVKaraokeAudioTrackIndex:I

    return p0
.end method

.method public getMVOriginalBackgroundAudio()Lcom/ss/android/vesdk/VEMVAudioInfo;
    .registers 3

    .line 187
    const-string v0, "getMVOriginalBackgroundAudio"

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_1d

    .line 194
    :cond_14
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEMVInterface;->getMVOriginalBackgroundAudio()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEMVAudioInfo;

    return-object p0

    .line 190
    :cond_1d
    :goto_1d
    const-string p0, "getMVOriginalBackgroundAudio bad input file, please call initMV first"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMVUserVideoInfo(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;>;"
        }
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mIsMVInit:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_62

    .line 153
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    if-eqz v0, :cond_5a

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->getMvResourceBeans()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 159
    iget-object v2, v1, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 160
    iget v2, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4c

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget v1, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 166
    :cond_4c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget v1, v1, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_59
    return-object v0

    .line 154
    :cond_5a
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, "MV resource information construction failed"

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 150
    :cond_62
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const-string p1, "The MV resource has not been initialized yet, please call the init2 method"

    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getServerAlgorithmConfig()Lcom/ss/android/vesdk/VEMVAlgorithmConfig;
    .registers 3

    .line 282
    const-string v0, "getServerAlgorithmConfig."

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 287
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/jni/TEMVInterface;->getServerAlgorithmConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig;

    return-object p0

    .line 284
    :cond_1c
    const-string p0, "getServerAlgorithmConfig error, please call initMV first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getServerAlgorithmConfig, initMv is not called!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initMV(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 25

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 120
    iget-object v1, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 121
    :try_start_7
    const-string v3, "VEEditor_VEMVInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initMV "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEMVParams;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, v0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    iget-object v7, v0, Lcom/ss/android/vesdk/VEMVParams;->bgmPath:Ljava/lang/String;

    iget v8, v0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimIn:I

    iget v9, v0, Lcom/ss/android/vesdk/VEMVParams;->bgmTrimOut:I

    iget-object v10, v0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iget-boolean v12, v0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    iget-object v13, v0, Lcom/ss/android/vesdk/VEMVParams;->extraParams:[Ljava/lang/String;

    iget-object v14, v0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    iget v15, v0, Lcom/ss/android/vesdk/VEMVParams;->backVolume:F

    iget v11, v0, Lcom/ss/android/vesdk/VEMVParams;->originalVolume:F

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->customRenderRes:Lcom/ss/android/vesdk/VESize;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->imageResizeRatio:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VEMVParams;->resFillMode:I

    move/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v22}, Lcom/ss/android/vesdk/VEMVInvoker;->initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_5e
    move-exception v0

    .line 126
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 27

    move-object/from16 v2, p0

    .line 102
    iget-object v1, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 103
    :try_start_5
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v22}, Lcom/ss/android/vesdk/VEMVInvoker;->initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_2b
    move-exception v0

    .line 106
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .registers 30

    move-object/from16 v2, p0

    .line 111
    iget-object v1, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 112
    :try_start_5
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v22}, Lcom/ss/android/vesdk/VEMVInvoker;->initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_2e
    move-exception v0

    .line 115
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 29

    move-object/from16 v2, p0

    .line 93
    iget-object v1, v2, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 94
    :try_start_5
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, p5

    invoke-direct/range {v2 .. v22}, Lcom/ss/android/vesdk/VEMVInvoker;->initMVInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;FF[Ljava/lang/String;[I[FLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_2d
    move-exception v0

    .line 97
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public isMVInitialedInternal()Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mIsMVInit:Z

    return p0
.end method

.method public setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalAlgorithmResult. photoPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 297
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/jni/TEMVInterface;->setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 294
    :cond_3a
    const-string p0, "setExternalAlgorithmResult error, please call initMV first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setExternalAlgorithmResult, initMv is not called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_IN_TYPE;)I
    .registers 7

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalAlgorithmResult. photoPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 307
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/jni/TEMVInterface;->setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 304
    :cond_45
    const-string p0, "setExternalAlgorithmResult error, please call initMV first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setExternalAlgorithmResult, initMv is not called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setListenerForMV(Lcom/ss/android/vesdk/VEListener$VEMVInitListener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

    return-void
.end method

.method public setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I
    .registers 4

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMVAudioBeatAlgorithmResult. beatSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 317
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I

    move-result p0

    return p0

    .line 314
    :cond_2b
    const-string p0, "setMVAudioBeatAlgorithmResult error, please call initMV first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setMVAudioBeatAlgorithmResult, initMv is not called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMVDataJson(Ljava/lang/String;)I
    .registers 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMVDataJson. json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 327
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mNativeMVHandler:Lcom/ss/android/vesdk/jni/TEMVInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->setMVDataJson(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 324
    :cond_29
    const-string p0, "setMVDataJson error, please call initMV first!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setMVDataJson, initMv is not called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMvOriginalAudio(ZF)I
    .registers 8

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMVoriginalAudio... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VEMVInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mIsMVInit:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    if-nez v0, :cond_21

    const/16 p0, -0x1f6

    return p0

    .line 204
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResVideoInfo:Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->getMvResourceBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 206
    iget v3, v2, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 207
    iget v2, v2, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_52
    const/4 v1, 0x0

    if-nez p1, :cond_6f

    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_5a
    if-ge p2, p1, :cond_88

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    check-cast v2, Ljava/lang/Integer;

    .line 213
    iget-object v3, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Lcom/ss/android/vesdk/VEEditor;->setVolume(IIF)Z

    goto :goto_5a

    .line 216
    :cond_6f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v1

    :goto_74
    if-ge v2, p1, :cond_88

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    .line 217
    iget-object v4, p0, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v1, p2}, Lcom/ss/android/vesdk/VEEditor;->setVolume(IIF)Z

    goto :goto_74

    :cond_88
    return v1
.end method

.method public updateMVBackgroundAudioTrack(Ljava/lang/String;II)I
    .registers 22

    move-object/from16 v1, p0

    .line 226
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v2, "updateMVBackgroundAudioTrack"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    iget-object v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    iget-object v9, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvResolution:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iget-object v13, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVSize:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v17}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method

.method public updateMVBackgroundAudioTrack2(Ljava/lang/String;II)I
    .registers 22

    move-object/from16 v1, p0

    .line 232
    const-string v0, "updateMVBackgroundAudioTrack2..."

    const-string v2, "VEEditor_VEMVInvoker"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 233
    iget-object v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVPath:Ljava/lang/String;

    iget-object v3, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourcePaths:[Ljava/lang/String;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVResourceTypes:[Ljava/lang/String;

    iget-object v9, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mvResolution:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iget-object v13, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVSize:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v2

    if-eqz v2, :cond_2d

    .line 235
    const-string v1, "updateMVBackgroundAudioTrack2 failed when reinitMV !!!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 238
    :cond_2d
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    iget v2, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mMVBackgroundAudioTrackIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/ss/android/vesdk/VEEditor;->setVolume(IIF)Z

    .line 239
    iget-object v0, v1, Lcom/ss/android/vesdk/VEMVInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrack(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public updateMVResources(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 22

    move-object/from16 v0, p1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMVResources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEMVParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEEditor_VEMVInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, v0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    iget-object v11, v0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iget-boolean v13, v0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    iget-object v14, v0, Lcom/ss/android/vesdk/VEMVParams;->extraParams:[Ljava/lang/String;

    iget-object v15, v0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    iget-object v1, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    iget-object v0, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v19, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v19}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method

.method public updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 23

    .line 259
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v1, "updateMVResources"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v18}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method

.method public updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 25

    .line 271
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v1, "updateMVResources"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, p5

    invoke-direct/range {v2 .. v18}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method

.method public updateMVResourcesRecreateEngine(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 22

    move-object/from16 v0, p1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMVResourcesRecreateEngine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEMVParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEEditor_VEMVInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, v0, Lcom/ss/android/vesdk/VEMVParams;->mvPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesFilePaths:[Ljava/lang/String;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEMVParams;->resourcesTypes:[Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/vesdk/VEMVParams;->mvDuration:[I

    iget-object v11, v0, Lcom/ss/android/vesdk/VEMVParams;->resMV:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    iget-boolean v13, v0, Lcom/ss/android/vesdk/VEMVParams;->isSingleVideo:Z

    iget-object v14, v0, Lcom/ss/android/vesdk/VEMVParams;->extraParams:[Ljava/lang/String;

    iget-object v15, v0, Lcom/ss/android/vesdk/VEMVParams;->imgSizes:Ljava/util/List;

    iget-object v1, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioPaths:[Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioDurations:[I

    iget-object v0, v0, Lcom/ss/android/vesdk/VEMVParams;->karaokeAudioSpeeds:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x1

    move-object/from16 v3, p0

    move-object/from16 v19, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v19}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method

.method public updateMVResourcesRecreateEngine(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 23

    .line 265
    const-string v0, "VEEditor_VEMVInvoker"

    const-string v1, "updateMVResourcesRecreateEngine"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v10, Lcom/ss/android/vesdk/VEMVParams$MVResolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEMVParams$MVResolution;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v18}, Lcom/ss/android/vesdk/VEMVInvoker;->reInitMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IILcom/ss/android/vesdk/VEMVParams$MVResolution;ZZ[Ljava/lang/String;Ljava/util/List;Z[Ljava/lang/String;[I[F)I

    move-result v0

    return v0
.end method
