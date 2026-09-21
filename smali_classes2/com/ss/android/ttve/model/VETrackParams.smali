.class public Lcom/ss/android/ttve/model/VETrackParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/model/VETrackParams$Builder;,
        Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ttve/model/VETrackParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_PATH:Ljava/lang/String; = "empty_path"


# instance fields
.field private extFlag:I

.field private layer:I

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seqIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seqOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field

.field private speeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

.field private trimIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trimOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 370
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$1;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$1;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/model/VETrackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    .line 46
    sget-object v0, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->DEFAULT:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    iput-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    .line 46
    sget-object v1, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->DEFAULT:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    .line 355
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    .line 357
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    .line 361
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    .line 363
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_6b

    const/4 v0, 0x0

    goto :goto_71

    .line 366
    :cond_6b
    invoke-static {}, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->values()[Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_71
    iput-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ttve/model/VETrackParams$1;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/ss/android/ttve/model/VETrackParams;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ss/android/ttve/model/VETrackParams;I)I
    .registers 2

    .line 10
    iput p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    return p1
.end method

.method static synthetic access$802(Lcom/ss/android/ttve/model/VETrackParams;Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ss/android/ttve/model/VETrackParams;I)I
    .registers 2

    .line 10
    iput p1, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getExtFlag()I
    .registers 1

    .line 125
    iget p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    return p0
.end method

.method public getLayer()I
    .registers 1

    .line 108
    iget p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    return p0
.end method

.method public getPaths()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    return-object p0
.end method

.method public getSeqIns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    return-object p0
.end method

.method public getSeqOuts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    return-object p0
.end method

.method public getSizes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;

    return-object p0
.end method

.method public getSpeeds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    return-object p0
.end method

.method public getTrackPriority()Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    return-object p0
.end method

.method public getTrimIns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    return-object p0
.end method

.method public getTrimOuts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VETrackParams{paths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trimIns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trimOuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seqIns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seqOuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speeds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 341
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 342
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 343
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 344
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 345
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 346
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 347
    iget p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->layer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object p2, p0, Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    if-nez p2, :cond_29

    const/4 p2, -0x1

    goto :goto_2d

    :cond_29
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_2d
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget p0, p0, Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
