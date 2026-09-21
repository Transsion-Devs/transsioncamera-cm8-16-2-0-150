.class Lcom/bef/byteeffect/view/BEFView$Builder$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/view/BEFView$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Params"
.end annotation


# instance fields
.field private mFPS:D

.field private mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;

.field private mKeepStatusAtPause:Z

.field private mNeglectTouchEvent:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;

.field private mSceneKey:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

.field final synthetic this$0:Lcom/bef/byteeffect/view/BEFView$Builder;


# direct methods
.method private constructor <init>(Lcom/bef/byteeffect/view/BEFView$Builder;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->this$0:Lcom/bef/byteeffect/view/BEFView$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/byteeffect/view/BEFView$Builder;Lcom/bef/byteeffect/view/BEFView$1;)V
    .registers 3

    .line 148
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;-><init>(Lcom/bef/byteeffect/view/BEFView$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I
    .registers 1

    .line 148
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I

    return p0
.end method

.method static synthetic access$102(Lcom/bef/byteeffect/view/BEFView$Builder$Params;I)I
    .registers 2

    .line 148
    iput p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I
    .registers 1

    .line 148
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/bef/byteeffect/view/BEFView$Builder$Params;I)I
    .registers 2

    .line 148
    iput p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)D
    .registers 3

    .line 148
    iget-wide v0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFPS:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/bef/byteeffect/view/BEFView$Builder$Params;D)D
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFPS:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/bef/byteeffect/view/BEFView$Builder$Params;Lcom/bef/byteeffect/view/BEFView$FitMode;)Lcom/bef/byteeffect/view/BEFView$FitMode;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/ResourceFinder;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/bef/byteeffect/view/BEFView$Builder$Params;Lcom/bef/byteeffect/ResourceFinder;)Lcom/bef/byteeffect/ResourceFinder;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    return-object p0
.end method

.method static synthetic access$602(Lcom/bef/byteeffect/view/BEFView$Builder$Params;Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;)Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mNeglectTouchEvent:Z

    return p0
.end method

.method static synthetic access$702(Lcom/bef/byteeffect/view/BEFView$Builder$Params;Z)Z
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mNeglectTouchEvent:Z

    return p1
.end method

.method static synthetic access$800(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mKeepStatusAtPause:Z

    return p0
.end method

.method static synthetic access$802(Lcom/bef/byteeffect/view/BEFView$Builder$Params;Z)Z
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mKeepStatusAtPause:Z

    return p1
.end method
