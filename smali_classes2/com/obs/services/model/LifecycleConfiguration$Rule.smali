.class public Lcom/obs/services/model/LifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rule"
.end annotation


# instance fields
.field protected abortIncompleteMultipartUpload:Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

.field protected enabled:Ljava/lang/Boolean;

.field protected expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

.field protected id:Ljava/lang/String;

.field protected noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

.field protected noncurrentVersionTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation
.end field

.field protected prefix:Ljava/lang/String;

.field protected tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;

.field protected transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo$TagSet;Ljava/lang/Boolean;)V
    .registers 6

    .line 666
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    .line 668
    iput-object p4, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    .line 669
    iput-object p3, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    .line 670
    iput-object p5, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .line 651
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    .line 653
    iput-object p3, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    .line 654
    iput-object p4, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method private getOuterType()Lcom/obs/services/model/LifecycleConfiguration;
    .registers 1

    .line 951
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_71

    .line 903
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_71

    .line 907
    :cond_12
    check-cast p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;

    .line 908
    invoke-direct {p0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v2

    invoke-direct {p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/LifecycleConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 912
    :cond_23
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 916
    :cond_2e
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    return v1

    .line 920
    :cond_39
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    return v1

    .line 924
    :cond_44
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    return v1

    .line 928
    :cond_4f
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    return v1

    .line 932
    :cond_5a
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 936
    :cond_65
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    iget-object p1, p1, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/obs/services/internal/utils/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    return v1

    :cond_70
    return v0

    :cond_71
    :goto_71
    return v1
.end method

.method public getAbortIncompleteMultipartUpload()Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    if-nez v0, :cond_d

    .line 625
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    .line 627
    :cond_d
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    return-object p0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 786
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNoncurrentVersionExpiration()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;
    .registers 1

    .line 824
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    return-object p0
.end method

.method public getNoncurrentVersionTransitions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    .line 868
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;
    .registers 1

    .line 746
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    return-object p0
.end method

.method public getTransitions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    .line 846
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 885
    invoke-direct {p0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 886
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 887
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    if-nez v2, :cond_1f

    move v2, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 888
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    if-nez v2, :cond_2b

    move v2, v3

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2f
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 889
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    if-nez v2, :cond_37

    move v2, v3

    goto :goto_3b

    .line 890
    :cond_37
    invoke-virtual {v2}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->hashCode()I

    move-result v2

    :goto_3b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 891
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    if-nez v2, :cond_43

    move v2, v3

    goto :goto_47

    .line 892
    :cond_43
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 893
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    if-nez v2, :cond_4f

    move v2, v3

    goto :goto_53

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 894
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    if-nez p0, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5e
    add-int/2addr v0, v3

    return v0
.end method

.method public newExpiration()Lcom/obs/services/model/LifecycleConfiguration$Expiration;
    .registers 3

    .line 679
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    return-object v0
.end method

.method public newNoncurrentVersionExpiration()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;
    .registers 3

    .line 689
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    return-object v0
.end method

.method public newNoncurrentVersionTransition()Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;
    .registers 3

    .line 713
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    .line 716
    :cond_b
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    .line 717
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public newTransition()Lcom/obs/services/model/LifecycleConfiguration$Transition;
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    .line 702
    :cond_b
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Transition;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    .line 703
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setAbortIncompleteMultipartUpload(Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->abortIncompleteMultipartUpload:Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .registers 2

    .line 796
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setExpiration(Lcom/obs/services/model/LifecycleConfiguration$Expiration;)V
    .registers 2

    .line 815
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-void
.end method

.method public setNoncurrentVersionExpiration(Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;)V
    .registers 2

    .line 834
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    return-void
.end method

.method public setNoncurrentVersionTransitions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)V"
        }
    .end annotation

    .line 878
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 777
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTagSet(Lcom/obs/services/model/BucketTagInfo$TagSet;)V
    .registers 2

    .line 756
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    return-void
.end method

.method public setTransitions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Transition;",
            ">;)V"
        }
    .end annotation

    .line 856
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->expiration:Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noncurrentVersionExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->transitions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noncurrentVersionTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$Rule;->noncurrentVersionTransitions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
