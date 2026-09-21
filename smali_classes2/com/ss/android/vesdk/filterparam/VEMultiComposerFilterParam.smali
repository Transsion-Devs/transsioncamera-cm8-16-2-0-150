.class public Lcom/ss/android/vesdk/filterparam/VEMultiComposerFilterParam;
.super Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;-><init>()V

    .line 15
    const-string v0, "multi composer filter"

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isOverallComposer()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
