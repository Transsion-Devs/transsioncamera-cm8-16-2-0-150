.class public Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLiteRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLiteRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSuperNightLiteRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLiteRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
