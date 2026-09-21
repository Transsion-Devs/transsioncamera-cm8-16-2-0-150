.class Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoQualityMonitor"
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

.field private mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static bridge synthetic -$$Nest$maddAvoidKey(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addAvoidKey(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAll(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->clearAll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misContainAvoidKey(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->isContainAvoidKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msize(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->size()I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 651
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    return-void
.end method

.method private addAvoidKey(Ljava/lang/String;)V
    .registers 2

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAll()V
    .registers 1

    .line 698
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private get(I)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
    .registers 2

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    return-object p0
.end method

.method private getFirst()Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 713
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    return-object p0
.end method

.method private indexOf(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 688
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 689
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    .line 690
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

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

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    .line 736
    :goto_b
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 737
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 738
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

    .line 717
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    return p1
.end method

.method private size()I
    .registers 1

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method private sizeOfAvoidKeys()I
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mAvoidSettingKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V
    .registers 7

    .line 654
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 655
    iget-object v1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    const-string v2, "key_video_quality"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    const/4 v1, -0x1

    .line 656
    const-string v3, "override_values_off"

    const-string/jumbo v4, "value_change_off"

    if-eq v0, v1, :cond_43

    .line 657
    iget-object v1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 658
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 659
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_58

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmIsOnValueChanging(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-nez p1, :cond_58

    .line 663
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->remove(Ljava/lang/String;)I

    return-void

    .line 667
    :cond_43
    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 668
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    return-void

    .line 673
    :cond_59
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->remove(Ljava/lang/String;)I

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoKey(Ljava/lang/String;)V
    .registers 4

    .line 679
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    .line 680
    const-string v1, "key_video_quality"

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 681
    iput-object p1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 682
    const-string p1, "null"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->supportValues:Ljava/util/List;

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$fgetmVideoQualityMonitor(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V

    return-void
.end method

.method public print()V
    .registers 5

    .line 746
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoQualityValueList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 747
    :goto_1f
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 748
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mVideoQualityValueList] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->mVideoQualityValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 749
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    iget-object v3, v3, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_5e
    return-void
.end method
