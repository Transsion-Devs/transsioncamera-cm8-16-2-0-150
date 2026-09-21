.class Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperAntiVideoMonitor"
.end annotation


# instance fields
.field private mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;


# direct methods
.method static bridge synthetic -$$Nest$maddAvoidKey(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->addAvoidKey(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misContainAvoidKey(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->isContainAvoidKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msize(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->size()I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V
    .registers 2

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 649
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V

    return-void
.end method

.method private addAvoidKey(Ljava/lang/String;)V
    .registers 2

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAll()V
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private get(I)Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;
    .registers 2

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    return-object p0
.end method

.method private getFirst()Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;
    .registers 2

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 704
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    return-object p0
.end method

.method private indexOf(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 679
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 680
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    .line 681
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method private isContainAvoidKey(Ljava/lang/String;)Z
    .registers 5

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    .line 727
    :goto_b
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 728
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 729
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_26
    return v1
.end method

.method private remove(Ljava/lang/String;)I
    .registers 3

    .line 708
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 710
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    return p1
.end method

.method private size()I
    .registers 1

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method private sizeOfAvoidKeys()I
    .registers 1

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;)V
    .registers 6

    .line 652
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 653
    const-string v2, "override_values_off"

    const-string/jumbo v3, "value_change_off"

    if-eq v0, v1, :cond_24

    .line 654
    iget-object v1, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    .line 655
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 656
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 659
    :cond_24
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    .line 660
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 661
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v1, "key_video_quality"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->-$$Nest$fgetmSupportAntiVideoQuality(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5a

    .line 664
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public addVideoKey(Ljava/lang/String;)V
    .registers 4

    .line 671
    new-instance v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V

    .line 672
    const-string v1, "key_video_quality"

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 673
    iput-object p1, v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    .line 674
    const-string p1, "null"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->supportValues:Ljava/util/List;

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->this$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->-$$Nest$fgetmSuperAntiVideoMonitor(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->add(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;)V

    return-void
.end method

.method public print()V
    .registers 5

    .line 737
    invoke-static {}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingValueList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 738
    :goto_1f
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 739
    invoke-static {}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSettingValueList] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 740
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_5e
    return-void
.end method
