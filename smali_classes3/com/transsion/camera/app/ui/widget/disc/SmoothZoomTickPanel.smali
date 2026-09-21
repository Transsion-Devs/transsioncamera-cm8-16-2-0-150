.class public Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTickStepLength:F

.field private final mTickText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->mTickText:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->mTickStepLength:F

    return-void
.end method


# virtual methods
.method public getTickText()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->mTickText:Ljava/lang/String;

    return-object p0
.end method
