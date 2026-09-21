.class public Lcom/ss/android/vesdk/VEEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/effect/IEffect;
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEEffect$VEFrameEffect;,
        Lcom/ss/android/vesdk/VEEffect$TEFlagType;,
        Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;,
        Lcom/ss/android/vesdk/VEEffect$TEEffectScene;,
        Lcom/ss/android/vesdk/VEEffect$InterfaceDef;,
        Lcom/ss/android/vesdk/VEEffect$Key;
    }
.end annotation


# static fields
.field private static final ALGORITHM_NUM:I = 0x20

.field private static final ALGORITHM_PARAM:Ljava/lang/String; = "AlgorithmParam"

.field private static final COMPOSER_PARAMS:Ljava/lang/String; = "ComposerParams"

.field private static final ENGINE_TYPE_KEY:Ljava/lang/String; = "effectEngineType"

.field private static final FILTER_PARAM:Ljava/lang/String; = "FitlerParam"

.field private static final FLAG_TYPE:Ljava/lang/String; = "FlagType"

.field private static final NAME_KEY:Ljava/lang/String; = "effectInterfaceName"

.field private static final TAG:Ljava/lang/String; = "VEEffect"

.field public static sKeyTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlgorithmCount:[I

.field private mAlgorithmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

.field private mEffectRotation:I

.field private mFaceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VELandMarkDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

.field private mSceneAlgorithmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEffect;->sKeyTypeMap:Ljava/util/Map;

    .line 75
    const-string v1, "filter in time offset"

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttve/nativePort/TEEffectInterface;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneAlgorithmMap:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneSet:Ljava/util/Set;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectRotation:I

    .line 269
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    .line 270
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEffect;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEEffect;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEEffect;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    return-object p0
.end method

.method private addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V
    .registers 8

    move v0, p3

    move-object p3, p1

    move p1, p2

    move p2, v0

    .line 2204
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/VEEffect;->addTrackAlgorithm(IILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;II)I

    move-result p1

    .line 2206
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2208
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    sget-object p0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .registers 7

    .line 2183
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneAlgorithmMap:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 2185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 2186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v4

    .line 2183
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneAlgorithmMap:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->skeleton:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    .line 2190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Integer;

    move-result-object v3

    .line 2188
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 2193
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    move v1, v2

    :goto_41
    if-ge v1, v0, :cond_4a

    .line 2196
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 2199
    :cond_4a
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method private notifyMessageToRecorder(IIILjava/lang/String;)V
    .registers 8

    .line 830
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 831
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 832
    const-string v1, "messageType"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 833
    const-string p1, "arg1"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 834
    const-string p1, "arg2"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 835
    const-string p1, "arg3"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method


# virtual methods
.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 4

    .line 881
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 882
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    .line 884
    :cond_b
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 885
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    new-instance v1, Lcom/ss/android/vesdk/VEEffect$3;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEffect$3;-><init>(Lcom/ss/android/vesdk/VEEffect;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setLandMarkDetectCallback(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    .line 894
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 897
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 898
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->landMarkDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 899
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 900
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public addSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    .line 1013
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTrackAlgorithm(IILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;II)I
    .registers 9

    .line 2127
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2128
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2129
    const-string v1, "TrackType"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2130
    const-string p1, "TrackIndex"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2131
    const-string p1, "SequenceIn"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2132
    const-string p1, "SequenceOut"

    invoke-virtual {v0, p1, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2133
    const-string p1, "AlgorithmName"

    invoke-virtual {p3}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const-string p1, "AlgorithmType"

    invoke-virtual {p3}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2135
    const-string p1, "ForInit"

    invoke-virtual {p3}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getForInit()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2136
    invoke-static {p3}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 2138
    const-string p2, "AlgorithmParam"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide p3

    invoke-virtual {v0, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2140
    :cond_48
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    if-eqz p1, :cond_53

    .line 2142
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    :cond_53
    return p0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I
    .registers 9

    .line 1996
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1997
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1998
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1999
    const-string v1, "TrackIndex"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2000
    const-string p2, "TrackType"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2001
    const-string p1, "FilterName"

    iget-object p2, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    const-string p1, "SequenceIn"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2003
    const-string p1, "SequenceOut"

    invoke-virtual {v0, p1, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2004
    const-string p1, "FilterType"

    iget p2, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2005
    const-string p1, "FilterDurType"

    iget p2, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2006
    invoke-static {p3}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 2008
    const-string p2, "FitlerParam"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2010
    :cond_4d
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    if-eqz p1, :cond_58

    .line 2012
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    .line 2016
    :cond_58
    :try_start_58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2017
    const-string p2, "filterType"

    iget p3, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2018
    const-string p2, "filterIndex"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2019
    const-string p2, "seqIn"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2020
    const-string p2, "seqOut"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2021
    const-string p2, "resultCode"

    if-ltz p0, :cond_79

    const/4 p3, 0x0

    goto :goto_7a

    :cond_79
    const/4 p3, -0x1

    :goto_7a
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2022
    const-string p2, "vesdk_event_recorder_switch_effect"

    const-string p3, "behavior"

    invoke-static {p2, p1, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_84} :catch_85

    return p0

    :catch_85
    move-exception p1

    .line 2024
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1787
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1788
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1789
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 1790
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VERuntime;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1e

    const/16 p0, -0x6c

    return p0

    .line 1792
    :cond_1e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFile(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    move-result-object p2

    const/16 v1, -0x64

    if-nez p2, :cond_2b

    return v1

    .line 1794
    :cond_2b
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const-wide/16 v2, 0x0

    invoke-static {p2, v2, v3}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Landroid/graphics/Bitmap;J)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p2

    if-nez p2, :cond_38

    return v1

    .line 1796
    :cond_38
    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    .line 1797
    const-string v1, "width"

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1798
    const-string v1, "height"

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1800
    :cond_59
    const-string p2, "key"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public animateImagesToPreview(Ljava/util/List;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/VEFrame;",
            ">;)I"
        }
    .end annotation

    const/16 v0, -0x64

    if-eqz p1, :cond_a4

    .line 1812
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_a4

    .line 1815
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1816
    new-array v2, v1, [Ljava/lang/String;

    .line 1817
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1818
    new-array p1, v1, [I

    .line 1819
    new-array v3, v1, [I

    .line 1820
    new-array v4, v1, [Ljava/nio/ByteBuffer;

    .line 1821
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v4

    if-eqz p2, :cond_87

    .line 1823
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_87

    .line 1824
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v1, :cond_87

    if-ge v6, v5, :cond_87

    .line 1825
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/ttve/model/VEFrame;

    if-nez v7, :cond_40

    .line 1828
    sget-object p0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p1, "frame nullptr"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1832
    :cond_40
    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v8

    instance-of v8, v8, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    if-nez v8, :cond_50

    .line 1833
    sget-object p0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p1, "Only support ByteBufferFrame"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1837
    :cond_50
    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v8

    check-cast v8, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v8}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    if-nez v8, :cond_64

    .line 1839
    sget-object p0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p1, "buffer nullptr"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1843
    :cond_64
    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v9

    aput v9, p1, v6

    .line 1844
    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v7

    aput v7, v3, v6

    .line 1845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1849
    :cond_87
    const-string p2, "effectInterfaceName"

    const/16 v0, 0x22

    invoke-virtual {v4, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1850
    const-string p2, "keys"

    invoke-virtual {v4, p2, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1851
    const-string p2, "widths"

    invoke-virtual {v4, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1852
    const-string p1, "heights"

    invoke-virtual {v4, p1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1853
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v4}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_a4
    :goto_a4
    return v0
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 5

    if-lez p2, :cond_2a

    if-eqz p1, :cond_2a

    .line 1509
    array-length v0, p1

    if-eq v0, p2, :cond_8

    goto :goto_2a

    .line 1512
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 1513
    const-string v0, "effectInterfaceName"

    const/16 v1, 0x11

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1514
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "effectEngineType"

    invoke-virtual {p2, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1515
    const-string v0, "node paths"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1516
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/16 p0, -0x64

    return p0
.end method

.method public appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 1631
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 1632
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_APPEND_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 1633
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 1634
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 1635
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1636
    sget-object p1, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p3, "appendComposerNodes..."

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, p2, :cond_3e

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1638
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eq p3, p2, :cond_39

    goto :goto_3e

    .line 1644
    :cond_39
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0

    .line 1639
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Nodes size="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", tags size="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1640
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but nodeNum="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1639
    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6

    .line 1729
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1730
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1731
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1732
    const-string v1, "newNodePath"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string p1, "nodeKey"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1735
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1736
    const-string p0, "checkComposerNodeExclusionRet"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 1737
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 7

    .line 1750
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1751
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1752
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1753
    const-string v1, "newNodePath"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const-string p1, "oldNodePath"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string p1, "nodeKey"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1757
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1758
    const-string p0, "checkComposerNodeExclusionRet"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 1759
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-object p0
.end method

.method public chooseSlamFace(I)V
    .registers 2

    .line 1247
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearLandMarkDetectListener()V
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 277
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    .line 278
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 279
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    if-eqz p0, :cond_11

    .line 282
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_11
    return-void
.end method

.method public enableEffect(Z)V
    .registers 5

    .line 401
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 402
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 403
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 404
    const-string v1, "enableEffect"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 405
    const-string p1, "needPassToPostProcess"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 406
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enableEffectAmazing(Z)V
    .registers 5

    .line 930
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 931
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 932
    const-string v1, "useAmazing"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 933
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 5

    .line 379
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 380
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 381
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 382
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 5

    .line 506
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 507
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 508
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->faceExtFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FlagType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 509
    const-string v1, "flag"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 510
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 11

    const/4 v0, 0x7

    .line 1916
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_37

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_f

    .line 1902
    sget-wide p2, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->REQUIREMENT_ENIGMA_DETECT:J

    .line 1904
    :cond_f
    new-instance v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;-><init>()V

    const/4 p1, 0x0

    .line 1905
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectLeft:F

    .line 1906
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectTop:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1907
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectWidth:F

    .line 1908
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRectHeight:F

    const/4 p1, 0x1

    .line 1909
    iput-boolean p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->enableDetectRect:Z

    const/4 p1, 0x0

    .line 1910
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->scanMode:I

    .line 1911
    iput-wide p2, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->detectRequirement:J

    .line 1912
    iput p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->codeType:I

    .line 1913
    iput-boolean p1, v1, Lcom/ss/android/vesdk/algorithm/VEEnigmaDetectAlgorithmParam;->decodeMultiple:Z

    const v5, 0x7fffffff

    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1914
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    return-void

    .line 1916
    :cond_37
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1917
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 1918
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackAlgorithm(I)I

    .line 1919
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 2

    .line 306
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 2

    .line 324
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableSmartBeauty(IZ)V
    .registers 13

    .line 333
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 334
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/util/Pair;

    if-eqz p2, :cond_4b

    .line 336
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aget v3, v2, v7

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v7

    if-nez v1, :cond_37

    .line 338
    new-instance v1, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;

    const-string v2, "FaceDetect"

    invoke-direct {v1, v7, v2, v7}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;-><init>(ILjava/lang/String;Z)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v3, p1

    .line 339
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    :cond_37
    if-eqz v9, :cond_3a

    goto :goto_73

    .line 345
    :cond_3a
    new-instance v1, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;

    const-string v0, "SmartBeauty"

    invoke-direct {v1, v8, v0, v7}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;-><init>(ILjava/lang/String;Z)V

    const/4 v5, -0x1

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v3, p1

    .line 346
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    return-void

    .line 349
    :cond_4b
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aget v3, v2, v7

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v7

    if-eqz v9, :cond_60

    .line 351
    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackAlgorithm(I)I

    .line 353
    :cond_60
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aget v2, v2, v7

    if-gtz v2, :cond_73

    if-eqz v1, :cond_73

    .line 355
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackAlgorithm(I)I

    :cond_73
    :goto_73
    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 2

    .line 315
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 4

    .line 1697
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1698
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1699
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1700
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v1

    .line 1701
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1702
    const-string p0, "Result"

    invoke-virtual {v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1703
    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 6

    if-nez p2, :cond_5

    const/high16 p0, -0x3d380000    # -100.0f

    return p0

    .line 1680
    :cond_5
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1681
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1682
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1683
    const-string v1, "node path"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string p1, "node key"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1686
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1687
    const-string p0, "Result"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    .line 1688
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public getEffectHandler()J
    .registers 5

    .line 2295
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2296
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2297
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2299
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v1

    .line 2300
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2301
    const-string p0, "EffectHandler"

    invoke-virtual {v1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2302
    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-wide v2
.end method

.method public getEffectRotation()I
    .registers 1

    .line 2370
    iget p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectRotation:I

    return p0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 4

    .line 1930
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1931
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1932
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1933
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1935
    check-cast p0, Lcom/ss/android/medialib/model/EnigmaResult;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 5

    .line 654
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 655
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 656
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 657
    const-string v1, "filterPath"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 660
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 661
    const-string p0, "filterIntensity"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    .line 662
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public getFrameByKey(Ljava/lang/String;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 5

    .line 1948
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1949
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1950
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1951
    const-string v1, "FrameKey"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/VEFrame;

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1969
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1970
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1971
    const-string v1, "Features"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1974
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    if-nez p0, :cond_23

    .line 1975
    const-string p0, "Result"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    .line 1974
    :cond_23
    const-string p0, ""

    .line 1977
    :goto_25
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return-object p0
.end method

.method public getSlamFaceCount()I
    .registers 2

    .line 1237
    const-string p0, "VEEffect"

    const-string v0, "Not supported yet."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc8

    return p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 7

    .line 1284
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1285
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1286
    const-string v1, "isPause"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1287
    const-string p1, "type"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 1288
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public handleEffectAudioPlay(Z)V
    .registers 2

    .line 1406
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V
    .registers 5

    .line 465
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 466
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 468
    iget-boolean v1, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDebug:Z

    .line 471
    iget-boolean v2, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDespeckleReserve:Z

    if-eqz v2, :cond_13

    or-int/lit8 v1, v1, 0x2

    .line 474
    :cond_13
    iget-boolean p1, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->alogDespeckle:Z

    if-eqz p1, :cond_19

    or-int/lit8 v1, v1, 0x4

    .line 477
    :cond_19
    const-string p1, "BeautifyDetectExtParamValue"

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 478
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V
    .registers 2

    .line 457
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V
    .registers 10

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setAlgorithmType(I)V

    const/4 v0, 0x1

    .line 437
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setForInit(Z)V

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    .line 438
    invoke-direct/range {v1 .. v7}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    return-void
.end method

.method public initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V
    .registers 2

    .line 487
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V
    .registers 2

    .line 448
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 5

    .line 2257
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2258
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2259
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2260
    const-string v1, "ProcessTouchEventType"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2262
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 2263
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2264
    const-string p0, "isGestureRegisteredResult"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getBool(Ljava/lang/String;)Z

    move-result p0

    .line 2265
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 6

    .line 809
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    if-eqz v0, :cond_7

    .line 811
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    :cond_7
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_11

    const/16 v0, 0x48

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    return-void

    .line 818
    :cond_11
    :goto_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->notifyMessageToRecorder(IIILjava/lang/String;)V

    return-void
.end method

.method public pauseEffectAudio(Z)V
    .registers 5

    .line 1256
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1257
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1258
    const-string v1, "effectaudio"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1259
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I
    .registers 4

    .line 2221
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-nez p1, :cond_9

    const/16 p0, -0x64

    return p0

    .line 2225
    :cond_9
    const-string v0, "effectInterfaceName"

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2226
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 4

    .line 2236
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromTouchPointer(Lcom/ss/android/vesdk/VETouchPointer;I)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2240
    :cond_8
    const-string p2, "EffectRotation"

    iget v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectRotation:I

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2241
    const-string p2, "effectInterfaceName"

    const/16 v0, 0x25

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2242
    sget-object p2, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "effectEngineType"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2244
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 2245
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2246
    const-string p0, "processTouchEventResult"

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getBool(Ljava/lang/String;)Z

    move-result p0

    .line 2247
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V
    .registers 2

    .line 681
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public regBachAlgorithmCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)V"
        }
    .end annotation

    .line 2387
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->regBachAlgorithmCallback(Ljava/util/List;)V

    .line 2389
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2390
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2392
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 2393
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEBachAlgorithmCallback;->getAlgorithmType()Lcom/ss/android/vesdk/VEBachAlgorithmCallback$VEBachAlgorithmType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2395
    :cond_30
    const-string p1, "CallbackTypes"

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 2396
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setEffectAlgorithmInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    .line 367
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 368
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 369
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->effectAlgorithmInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FlagType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 370
    :goto_20
    const-string v1, "flag"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 371
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 16

    .line 530
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    if-nez v1, :cond_b

    .line 531
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    .line 533
    :cond_b
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    new-instance v2, Lcom/ss/android/vesdk/VEEffect$1;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/VEEffect$1;-><init>(Lcom/ss/android/vesdk/VEEffect;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setFaceInfoCallback(Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;)V

    .line 560
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneSet:Ljava/util/Set;

    sget-object v7, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-void

    .line 563
    :cond_2d
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneSet:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 566
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/util/Pair;

    .line 567
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/util/Pair;

    if-eqz v1, :cond_6a

    .line 570
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    goto :goto_71

    .line 571
    :cond_6a
    new-instance v2, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;

    const-string v4, "FaceDetect"

    invoke-direct {v2, v8, v4, v8}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;-><init>(ILjava/lang/String;Z)V

    :goto_71
    if-eqz v10, :cond_79

    .line 572
    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    :goto_77
    move-object v12, v4

    goto :goto_81

    .line 573
    :cond_79
    new-instance v4, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    const-string v5, "ExpressBaseDetect"

    invoke-direct {v4, v9, v5, v8}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>(ILjava/lang/String;Z)V

    goto :goto_77

    :goto_81
    if-eqz v11, :cond_89

    .line 574
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    move-object v13, v3

    goto :goto_91

    .line 575
    :cond_89
    new-instance v4, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    const-string v5, "GenderDetect"

    invoke-direct {v4, v3, v5, v8}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>(ILjava/lang/String;Z)V

    move-object v13, v4

    :goto_91
    if-nez v1, :cond_9e

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    .line 578
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    goto :goto_b2

    .line 580
    :cond_9e
    invoke-virtual {v2}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getForInit()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 581
    invoke-virtual {v2, v8}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setForInit(Z)V

    .line 582
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/vesdk/VEEffect;->updateTrackAlgorithmParam(ILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)I

    :cond_b2
    :goto_b2
    if-nez v10, :cond_be

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, v12

    .line 585
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    :cond_be
    if-nez v11, :cond_ca

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, v13

    .line 588
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addAlgorithm(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;IIIII)V

    .line 591
    :cond_ca
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneAlgorithmMap:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 592
    :goto_da
    array-length v2, v1

    if-ge v8, v2, :cond_ed

    .line 593
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v4, v2, v3

    add-int/2addr v4, v9

    aput v4, v2, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_da

    .line 597
    :cond_ed
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v1

    .line 598
    const-string v2, "effectInterfaceName"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 599
    sget-object v2, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "FlagType"

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 600
    const-string v2, "flag"

    invoke-virtual {v1, v2, v9}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 601
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
    .registers 3

    .line 691
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
    .registers 2

    .line 700
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 4

    .line 724
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    .line 725
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 726
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 727
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->skeletonDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 728
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 729
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    .line 750
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 751
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 752
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->smartBeautyFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 753
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 754
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
    .registers 2

    .line 672
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 5

    if-lez p2, :cond_2a

    if-eqz p1, :cond_2a

    .line 1492
    array-length v0, p1

    if-eq v0, p2, :cond_8

    goto :goto_2a

    .line 1495
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 1496
    const-string v0, "effectInterfaceName"

    const/16 v1, 0x10

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1497
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "effectEngineType"

    invoke-virtual {p2, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1498
    const-string v0, "node paths"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1499
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/16 p0, -0x64

    return p0
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 1605
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 1606
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_RELOAD_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 1607
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 1608
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 1609
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1610
    sget-object p1, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p3, "reloadComposerNodes..."

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, p2, :cond_3e

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1612
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eq p3, p2, :cond_39

    goto :goto_3e

    .line 1618
    :cond_39
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0

    .line 1613
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Nodes size="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", tags size="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1614
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but nodeNum="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1613
    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 5

    if-lez p2, :cond_2a

    if-eqz p1, :cond_2a

    .line 1526
    array-length v0, p1

    if-eq v0, p2, :cond_8

    goto :goto_2a

    .line 1529
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 1530
    const-string v0, "effectInterfaceName"

    const/16 v1, 0x12

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1531
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "effectEngineType"

    invoke-virtual {p2, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1532
    const-string v0, "node paths"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1533
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/16 p0, -0x64

    return p0
.end method

.method public removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 5

    .line 609
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 610
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 611
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 612
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 613
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 614
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 617
    :cond_20
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 618
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegFaceInfoCallback()V

    :cond_2b
    return-void
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 910
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 911
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setLandMarkDetectCallback(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    :cond_13
    return-void
.end method

.method public removeSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    .line 1023
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTrackAlgorithm(I)I
    .registers 5

    .line 2154
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2155
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2156
    const-string v1, "AlgorithmIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2157
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeTrackFilter(I)I
    .registers 5

    .line 2038
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2039
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2040
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2041
    const-string v1, "FilterIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2042
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 6

    if-lez p4, :cond_30

    .line 1545
    array-length v0, p1

    if-ne p2, v0, :cond_30

    array-length p2, p3

    if-eq p4, p2, :cond_9

    goto :goto_30

    .line 1548
    :cond_9
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 1549
    const-string p4, "effectInterfaceName"

    const/16 v0, 0x13

    invoke-virtual {p2, p4, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1550
    sget-object p4, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const-string v0, "effectEngineType"

    invoke-virtual {p2, v0, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1551
    const-string p4, "node paths old"

    invoke-virtual {p2, p4, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1552
    const-string p1, "node paths new"

    invoke-virtual {p2, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1553
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_30
    :goto_30
    const/16 p0, -0x64

    return p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 8

    .line 1659
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 1660
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_REPLACE_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 1661
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 1662
    iput p4, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueTwo:I

    .line 1663
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 1664
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1665
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayThree:Ljava/util/ArrayList;

    .line 1666
    sget-object p1, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p2, "replaceComposerNodes..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 10

    .line 777
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 778
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 779
    const-string v1, "MsgID"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 780
    const-string p1, "ARG1"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 781
    const-string p1, "ARG2"

    invoke-virtual {v0, p1, p4, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 782
    const-string p1, "ARG3"

    invoke-virtual {v0, p1, p6}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public sendEffectMsg(IJJ[B)V
    .registers 10

    .line 795
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 796
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 797
    const-string v1, "MsgID"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 798
    const-string p1, "ARG1"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 799
    const-string p1, "ARG2"

    invoke-virtual {v0, p1, p4, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 800
    array-length p1, p6

    int-to-long p1, p1

    const-string p3, "BufSize"

    invoke-virtual {v0, p3, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 801
    array-length p1, p6

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 802
    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 803
    const-string p2, "ARG3"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    .line 804
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V
    .registers 4

    .line 2379
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2380
    const-string v1, "isEnableARCore"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEARCoreParam;->isEnableARCore()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2381
    const-string p1, "effectInterfaceName"

    const/16 v1, 0x30

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2382
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setAlgorithmChangeMsgEnable(IZ)V
    .registers 3

    .line 1362
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 6

    .line 1463
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1464
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1465
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1466
    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1467
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setAudioDeviceType(Z)I
    .registers 4

    .line 2363
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2364
    const-string v1, "DefaultAudioDevice"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2365
    const-string p1, "effectInterfaceName"

    const/16 v1, 0x2f

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2366
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setBgmMute(Z)V
    .registers 5

    .line 1267
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1268
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1269
    const-string v1, "setBgmMute"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1270
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setCameraClose(Z)V
    .registers 2

    .line 415
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 5

    .line 518
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 519
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 520
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 521
    const-string v1, "camera_first_frame_opt"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 522
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setComposerMode(II)I
    .registers 6

    .line 1477
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1478
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1479
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1480
    const-string v1, "Mode"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1481
    const-string p1, "OrderType"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1482
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 5

    if-lez p2, :cond_2a

    if-eqz p1, :cond_2a

    .line 1429
    array-length v0, p1

    if-eq v0, p2, :cond_8

    goto :goto_2a

    .line 1432
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 1433
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xf

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1434
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "effectEngineType"

    invoke-virtual {p2, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1435
    const-string v0, "node paths"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1436
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    const/16 p0, -0x64

    return p0
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7

    .line 1566
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 1567
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_SET_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 1568
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 1569
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 1570
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1571
    sget-object v1, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string v2, "setComposerNodesWithTag..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, p2, :cond_7b

    iget-object v2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1573
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, p2, :cond_39

    goto :goto_7b

    .line 1579
    :cond_39
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    .line 1582
    :try_start_3d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1583
    const-string v1, "path"

    const/4 v2, 0x0

    if-eqz p1, :cond_4e

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    :catch_4c
    move-exception p1

    goto :goto_77

    :cond_4e
    move-object p1, v2

    :goto_4f
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1584
    const-string p1, "nodeTag"

    if-eqz p3, :cond_5a

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_5a
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1585
    const-string p1, "nodeValue"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1586
    const-string p1, "resultCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1587
    const-string p1, "vesdk_event_recorder_composer"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_76} :catch_4c

    return p0

    .line 1589
    :goto_77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    .line 1574
    :cond_7b
    :goto_7b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nodes size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tags size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 1575
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but nodeNum="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1574
    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 5

    .line 1415
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1416
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1417
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1418
    const-string v1, "Path"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setDLEEnable(Z)V
    .registers 2

    .line 1384
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 6

    .line 1863
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_10

    goto :goto_4b

    .line 1865
    :cond_10
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1866
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;

    .line 1867
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setForInit(Z)V

    .line 1868
    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->setDectectIntervalTime(I)V

    .line 1869
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1870
    const-string v1, "effectInterfaceName"

    const/16 v3, 0x9

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1871
    const-string v1, "AlgorithmIndex"

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1872
    invoke-static {v0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1874
    const-string v1, "AlgorithmParam"

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 1876
    :cond_41
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    if-eqz v0, :cond_4b

    .line 1878
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
    .registers 4

    if-nez p2, :cond_2d

    .line 857
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    new-instance v0, Lcom/ss/android/vesdk/VEEffect$2;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/VEEffect$2;-><init>(Lcom/ss/android/vesdk/VEEffect;Lcom/ss/android/vesdk/VERecorder$DetectListener;)V

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V

    .line 867
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 868
    const-string p2, "effectInterfaceName"

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 869
    sget-object p2, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->detectListenerFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "FlagType"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 870
    const-string p2, "flag"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 871
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    :cond_2d
    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 956
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/vesdk/VEEffect;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 7

    .line 966
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 967
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 968
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 969
    const-string v1, "deviceRotation"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 970
    const-string p1, "timeStampNano"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 971
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setEffectBgmEnable(Z)V
    .registers 5

    .line 292
    sget-object v0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectBgmEnable... enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 294
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 295
    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 296
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 2

    .line 497
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc8

    return p0
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 846
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEffect;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    .line 847
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEffectRotation(I)V
    .registers 2

    .line 2374
    iput p1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectRotation:I

    return-void
.end method

.method public setEffectSlamEnable(Z)V
    .registers 2

    .line 1003
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 7

    .line 2313
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2314
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2315
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2317
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const-string p1, "maleOpacity"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2319
    const-string p1, "femaleOpacity"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2320
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setFilterParam(ILjava/lang/String;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .line 2097
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2098
    const-string v1, "FilterIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2099
    const-string p1, "effectInterfaceName"

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2100
    sget-object p1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "effectEngineType"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2101
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 2102
    const-string v1, "filter in time offset"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2104
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2106
    :cond_31
    const-string p2, "FitlerParam"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2108
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    .line 2110
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 5

    .line 1336
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1337
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1338
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1339
    const-string v1, "ForceAlgorithmEnableCount"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1340
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 5

    .line 1324
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1325
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1326
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1327
    const-string v1, "ForceAlgorithmExecuteCount"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1328
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setHandDetectLowpowerEnable(Z)V
    .registers 5

    .line 1348
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1349
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1350
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1351
    const-string v1, "HandDetectLowpowerEnable"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1352
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setLargeMattingModelEnable(Z)V
    .registers 5

    .line 1371
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1372
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1373
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1374
    const-string v1, "LargeMattingModelEnable"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1375
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setMusicNodes(Ljava/lang/String;)I
    .registers 5

    .line 1393
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1394
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1395
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1396
    const-string v1, "Path"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1312
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1313
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1314
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1298
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1299
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1300
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I
    .registers 11

    .line 2329
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2330
    const-string v1, "SafeType"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    const/4 p1, 0x0

    if-nez p2, :cond_d

    goto :goto_57

    .line 2336
    :cond_d
    array-length v1, p2

    .line 2337
    new-array v2, v1, [Lcom/ss/android/ttve/nativePort/TEBundle;

    move v3, p1

    :goto_11
    if-ge v3, v1, :cond_4c

    .line 2339
    aget-object v4, p2, v3

    .line 2340
    invoke-static {v4}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VESafeAreaParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v5

    .line 2341
    const-string v6, "safetype"

    iget v7, v4, Lcom/ss/android/vesdk/VESafeAreaParams;->safeType:I

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2342
    const-string v6, "left"

    iget v7, v4, Lcom/ss/android/vesdk/VESafeAreaParams;->left:F

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2343
    const-string v6, "top"

    iget v7, v4, Lcom/ss/android/vesdk/VESafeAreaParams;->top:F

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2344
    const-string v6, "right"

    iget v7, v4, Lcom/ss/android/vesdk/VESafeAreaParams;->right:F

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2345
    const-string v6, "bottom"

    iget v4, v4, Lcom/ss/android/vesdk/VESafeAreaParams;->bottom:F

    invoke-virtual {v5, v6, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2346
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2347
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4c
    :goto_4c
    if-ge p1, v1, :cond_56

    .line 2349
    aget-object p2, v2, p1

    .line 2350
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_56
    move p1, v1

    .line 2353
    :goto_57
    const-string p2, "SafeAreaSize"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2354
    const-string p1, "effectInterfaceName"

    const/16 p2, 0x2d

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2355
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setScanArea(FFFF)V
    .registers 5

    .line 1891
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 2

    .line 392
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 1227
    const-string p0, "VEEffect"

    const-string p1, "Not supported yet."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc8

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    .line 943
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 944
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 945
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->stickerRequestFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 946
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 947
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 6

    .line 1769
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1770
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1771
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1772
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEEffectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1773
    const-string v1, "ComposerParams"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 1774
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    .line 1775
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 8

    .line 1036
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1037
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1038
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1039
    const-string v1, "slamDeviceConfig"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1040
    const-string v1, "hasAcc"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1041
    const-string p1, "hasGyr"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1042
    const-string p1, "hasGravity"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1043
    const-string p1, "hasOrientation"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1044
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
    .registers 4

    .line 1211
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setARTextBitmapCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V

    .line 1212
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1213
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1214
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->arSlamBitmap:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1215
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1216
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 3

    .line 1183
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    .line 1184
    const-string p1, "effectInterfaceName"

    const/16 v0, 0x67

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    const/16 p0, -0xc8

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 4

    .line 1195
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setARTextParagraphContentCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V

    .line 1196
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1197
    const-string v0, "effectInterfaceName"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1198
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->arSlamContent:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FlagType"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1199
    const-string v0, "flag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1200
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 5

    .line 1157
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1158
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1159
    const-string v1, "isFinished"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1160
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 12

    .line 1057
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1058
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1059
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1060
    const-string v1, "slamProcessIngestAcc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1061
    const-string v1, "ax"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1062
    const-string p1, "ay"

    invoke-virtual {v0, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1063
    const-string p1, "az"

    invoke-virtual {v0, p1, p5, p6}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1064
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, p7, p8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1065
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 12

    .line 1101
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1102
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1103
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1104
    const-string v1, "slamProcessIngestGra"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1105
    const-string v1, "gax"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1106
    const-string p1, "gay"

    invoke-virtual {v0, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1107
    const-string p1, "gaz"

    invoke-virtual {v0, p1, p5, p6}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1108
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, p7, p8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1109
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 12

    .line 1079
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1080
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1081
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1082
    const-string v1, "slamProcessIngestGyr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1083
    const-string v1, "grx"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1084
    const-string p1, "gry"

    invoke-virtual {v0, p1, p3, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1085
    const-string p1, "grz"

    invoke-virtual {v0, p1, p5, p6}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1086
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, p7, p8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1087
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 7

    .line 1121
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1122
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1123
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1124
    const-string v1, "slamProcessIngestOri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1125
    const-string v1, "wRbs"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 1126
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDouble(Ljava/lang/String;D)I

    .line 1127
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 8

    .line 1141
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1142
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1143
    const-string v1, "InputText"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string p1, "Arg1"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1145
    const-string p1, "Arg2"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1146
    const-string p1, "Arg3"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguage(Ljava/lang/String;)I
    .registers 5

    .line 1170
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1171
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1172
    const-string v1, "Language"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 6

    .line 2276
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2277
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2278
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2279
    const-string v1, "ProcessTouchEventType"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2280
    const-string p1, "Suspend"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2282
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 2283
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterfaceWithResult(Lcom/ss/android/ttve/nativePort/TEBundle;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2284
    const-string p0, "suspendGestureRecognizerResult"

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->getBool(Ljava/lang/String;)Z

    move-result p0

    .line 2285
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public unRegFaceInfoCallback()V
    .registers 8

    .line 627
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneSet:Ljava/util/Set;

    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectScene;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEEffectScene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEffect;->mSceneAlgorithmMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    move v2, v1

    .line 631
    :goto_26
    array-length v3, v0

    if-ge v2, v3, :cond_76

    .line 632
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmCount:[I

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v4

    if-nez v5, :cond_73

    .line 633
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 634
    sget-object v4, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove track algorithm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEEffect;->removeTrackAlgorithm(I)I

    .line 636
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEffect;->mAlgorithmMap:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 640
    :cond_76
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 641
    const-string v2, "effectInterfaceName"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 642
    sget-object v2, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "FlagType"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 643
    const-string v2, "flag"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 644
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 645
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setFaceInfoCallback(Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;)V

    return-void
.end method

.method public unRegHandDetectCallback()V
    .registers 2

    .line 716
    const-string p0, "VEEffect"

    const-string v0, "Not supported yet."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegSkeletonDetectCallback()V
    .registers 4

    .line 736
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 737
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 738
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->skeletonDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FlagType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 739
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 740
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 741
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    return-void
.end method

.method public unRegSmartBeautyCallback()V
    .registers 4

    .line 761
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 762
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 763
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->smartBeautyFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "FlagType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 764
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 765
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 766
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->setSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    return-void
.end method

.method public unregBachAlgorithmCallback()V
    .registers 1

    .line 2401
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->unregBachAlgorithmCallback()V

    return-void
.end method

.method public unregSceneDetectCallback()V
    .registers 2

    .line 708
    const-string p0, "VEEffect"

    const-string v0, "Not supported yet."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAlgorithmRuntimeParam(IF)V
    .registers 6

    .line 424
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 425
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 426
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 427
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 428
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 7

    .line 1447
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1448
    const-string v1, "effectInterfaceName"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1449
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1450
    const-string v1, "node path"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const-string p1, "node tag"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string p1, "node value"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 1453
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 8

    .line 1712
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1713
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1714
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1715
    const-string v1, "node num"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1716
    const-string p1, "node paths"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1717
    const-string p1, "node keys"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1718
    const-string p1, "values"

    invoke-virtual {v0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloatArray(Ljava/lang/String;[F)I

    .line 1719
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public updateRotation(FFF)V
    .registers 5

    float-to-int p1, p3

    if-gez p1, :cond_b

    .line 984
    sget-object p0, Lcom/ss/android/vesdk/VEEffect;->TAG:Ljava/lang/String;

    const-string p1, "updateRotation failed, rotation < 0."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const/16 p2, 0x168

    if-le p1, p2, :cond_11

    .line 987
    rem-int/lit16 p1, p1, 0x168

    .line 989
    :cond_11
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 990
    const-string p3, "effectInterfaceName"

    const/16 v0, 0x16

    invoke-virtual {p2, p3, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 991
    sget-object p3, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const-string v0, "effectEngineType"

    invoke-virtual {p2, v0, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 992
    const-string p3, "effect orientation"

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 993
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public updateTrackAlgorithmParam(ILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)I
    .registers 6

    .line 2168
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2169
    const-string v1, "effectInterfaceName"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2170
    const-string v1, "AlgorithmIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2171
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2173
    const-string p2, "AlgorithmParam"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2175
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    if-eqz p1, :cond_29

    .line 2177
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 6

    .line 2071
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2072
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2073
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2074
    const-string v1, "FilterIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2075
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 2077
    const-string p2, "FitlerParam"

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2079
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    if-eqz p1, :cond_34

    .line 2081
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    :cond_34
    return p0
.end method

.method public updateTrackFilterTime(III)I
    .registers 7

    .line 2054
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2055
    const-string v1, "effectInterfaceName"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2056
    sget-object v1, Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;->normal:Lcom/ss/android/vesdk/VEEffect$TEEffectEngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "effectEngineType"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2057
    const-string v1, "FilterIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2058
    const-string p1, "SequenceIn"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2059
    const-string p1, "SequenceOut"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2060
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->callEffectInterface(Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method
