.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"

# interfaces
.implements Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;


# static fields
.field private static final PROJECTION_PHONE:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const v0, 0x7f04003f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    return-void
.end method

.method private updateAvatarView(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "avatarView"
    .parameter "contact"

    .prologue
    const v2, 0x302004a

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 199
    invoke-static {p1, p2}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    .line 212
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 202
    invoke-static {p1, p2}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    invoke-static {p1}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 205
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 206
    invoke-virtual {p1, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 209
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {p1, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 140
    const v3, 0x7f1000b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 141
    .local v18, name:Landroid/widget/TextView;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 142
    .local v19, nameString:Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    const v3, 0x7f1000bb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 147
    .local v4, number:Landroid/widget/TextView;
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, numberString:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v3, 0x7f100034

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 152
    .local v6, label:Landroid/widget/TextView;
    const/16 v3, 0x65

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move-object v10, v5

    invoke-static/range {v3 .. v10}, Lmiui/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    const v3, 0x7f1000bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 157
    .local v16, divider:Landroid/view/View;
    const v3, 0x7f020117

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, id:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 162
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, nextId:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const v3, 0x7f020115

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 170
    .end local v20           #nextId:Ljava/lang/String;
    :cond_1
    const v3, 0x7f1000b9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 171
    .local v15, contactPanel:Landroid/widget/LinearLayout;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0b002b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 172
    .local v21, padding:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0b0003

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 173
    .local v13, avatarSize:I
    const/4 v3, 0x0

    const/4 v7, 0x0

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v15, v0, v3, v1, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 175
    const v3, 0x7f100013

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/QuickContactBadge;

    .line 176
    .local v14, avatarView:Landroid/widget/QuickContactBadge;
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 177
    .local v9, contactId:J
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 178
    .local v11, photoId:J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-nez v3, :cond_3

    .line 179
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 180
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 181
    .local v22, prevId:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 184
    add-int v3, v21, v13

    move/from16 v0, v21

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v15, v3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 189
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 194
    .end local v22           #prevId:Ljava/lang/String;
    :goto_1
    return-void

    .line 186
    .restart local v22       #prevId:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v7, v19

    move-object v8, v5

    .line 187
    invoke-static/range {v7 .. v12}, Lcom/android/mms/data/Contact;->getTmpContact(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/android/mms/data/Contact;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/mms/ui/RecipientsAdapter;->updateAvatarView(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 191
    .end local v22           #prevId:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v7, v19

    move-object v8, v5

    .line 192
    invoke-static/range {v7 .. v12}, Lcom/android/mms/data/Contact;->getTmpContact(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/android/mms/data/Contact;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/mms/ui/RecipientsAdapter;->updateAvatarView(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;)V

    goto :goto_1
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "cursor"

    .prologue
    const/16 v13, 0x21

    const/4 v12, 0x0

    .line 87
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, number:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 89
    const-string v6, ""

    .line 134
    :goto_0
    return-object v6

    .line 91
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 93
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, name:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 96
    .local v8, type:I
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, label:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .local v0, displayLabel:Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 100
    const-string v3, ""

    .line 112
    :goto_1
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v5, v9}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, nameAndNumber:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v6, out:Landroid/text/SpannableString;
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 118
    .local v2, len:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    :goto_2
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, person_id:Ljava/lang/String;
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "person_id"

    invoke-direct {v9, v10, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "number"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 108
    .end local v2           #len:I
    .end local v4           #nameAndNumber:Ljava/lang/String;
    .end local v6           #out:Landroid/text/SpannableString;
    .end local v7           #person_id:Ljava/lang/String;
    :cond_1
    const-string v9, ", "

    const-string v10, " "

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 122
    .restart local v2       #len:I
    .restart local v4       #nameAndNumber:Ljava/lang/String;
    .restart local v6       #out:Landroid/text/SpannableString;
    :cond_2
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "location"

    .prologue
    .line 253
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 254
    .local v0, v:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 255
    check-cast v0, Landroid/widget/TextView;

    .line 256
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v6, 0x0

    .line 218
    .local v6, cons:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "type"

    const-string v4, "short_text"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 245
    .local v7, phoneCursor:Landroid/database/Cursor;
    return-object v7
.end method
