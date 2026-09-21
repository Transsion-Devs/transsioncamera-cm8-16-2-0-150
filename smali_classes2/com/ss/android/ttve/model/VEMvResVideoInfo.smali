.class public Lcom/ss/android/ttve/model/VEMvResVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mvResourceBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    .line 18
    :cond_c
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/ss/android/ttve/model/MVResourceBean;)Z
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Lcom/ss/android/ttve/model/MVResourceBean;
    .registers 2

    if-gez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_4
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/MVResourceBean;

    return-object p0
.end method

.method public getMvResourceBeans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public set(ILcom/ss/android/ttve/model/MVResourceBean;)Z
    .registers 3

    if-gez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_4
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;->mvResourceBeans:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
