.class public abstract Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->visible:Z

    .line 7
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->Unknown:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
