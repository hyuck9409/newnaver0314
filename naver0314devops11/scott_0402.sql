-- ī�信�� scott_table �� �ٿ�޾� naver0314 �� ������
-- cmd â���� naver0314 ������ �̵���(cd naver0314) 
-- sqlplus �� scott �������� ������
-- @scott_table ����
-- �ڵ����� �ȿ� �ִ� sql ��ɾ ����˴ϴ�
select * from tab; --������ ���̺� Ȯ��
select * from emp; -- emp ���̺��� ������ ����Ÿ Ȯ��
commit; -- �߰��� ����Ÿ Ŀ�� , Ŀ�� ���ҽ� �߰��� ����Ÿ�� ��ҵ�

-- emp ���̺��� ���� Ȯ��
desc emp;

--��ü �÷����� emp ���̺� ��ȸ
select * from emp;
--ename,job �÷��� ��ȸ
select ename,job from emp;

--ename,job �÷��� ��ȸ, ename �� ��������(asc) �Ǵ� ������������ ��ȸ(desc)
select ename,job from emp order by ename asc;--asc �ΰ�� ���� ����,�������� ���
select ename,job from emp order by ename desc; --ename �� ������������ ����








